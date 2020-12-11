---
layout: handbook-page-toc
title: "Marketing Operations"
description: "Marketing Operations (MktgOps) supports the entire Marketing team to streamline processes and manage related tools. Due to those tools, we often support other teams at GitLab as well."
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

## Charter

Marketing Operations (MktgOps) supports the entire Marketing team to streamline processes and manage related tools. Due to those tools, we often support other teams at GitLab as well. MktgOps works closely with Sales Operations (SalesOps) to ensure information between systems is seamless, data is as accurate as possible and terminology is consistent in respective systems. Not only are we assisting with marketing operations but we are also involved in the operations of marketing, such as the budget and strategies.

Our team is structured as business partners to the rest of Marketing - see focus next to the names below.

## Meet the Team

- Claudia Beer - Manager, Marketing Operations
- Beth Peterson - Senior Marketing Operations Manager
- Amy Waller - Senior Marketing Operations Manager
- Sarah Daily - Senior Marketing Operations Manager
- Jameson Burton - Marketing Operations Associate

### Business Partners

- SDRs - Beth Peterson
- Campaigns - Amy Waller
- Content - Sarah Daily

## Teams We Work Closely With

<div class="flex-row" markdown="0" style="height:80px">
    <a href="/handbook/marketing/revenue-marketing/" class="btn btn-purple-inv" style="width:20%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Revenue Marketing</a>
    <a href="/handbook/marketing/corporate-marketing" class="btn btn-purple-inv" style="width:20%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Corporate Marketing</a>
    <a href="/handbook/marketing/community-relations/" class="btn btn-purple-inv" style="width:20%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Community Relations</a>
    <a href="/handbook/marketing/strategic-marketing/" class="btn btn-purple-inv" style="width:20%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Strategic Marketing</a>
    <a href="/handbook/marketing/inbound-marketing/" class="btn btn-purple-inv" style="width:20%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Inbound Marketing</a>
    </div>

<div class="flex-row" markdown="0" style="height:80px">
    <a href="/handbook/sales/field-operations/sales-operations" class="btn btn-purple-inv" style="width:20%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Sales Operations</a>
    <a href="/handbook/finance/procurement/" class="btn btn-purple-inv" style="width:20%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Procurement</a>
    <a href="/handbook/legal/" class="btn btn-purple-inv" style="width:20%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Legal</a>
    <a href="/handbook/business-ops/" class="btn btn-purple-inv" style="width:20%;height:100%;margin:1px;display:flex;justify-content:center;align-items:center;">Business Ops</a>
</div>

## How to Communicate with Us

1. Slack - [#mktgops](https://gitlab.slack.com/archives/mktgops) - We use this channel for general marketing operations support, weekly marketing operations team standup updates, and key system status updates. 

## How We Work

### Our Motto: If it isn't an Issue, it isn't OUR issue.

### Use of Issues

The MktgOps team works from issues and issue boards. If you are needing our assistance with any project, please open an issue and use the ~MktgOps::0 - To Be Triaged label anywhere within the GitLab repo. Prior to opening a new issue, feel free to reach out to your business partner to see if there is already a related issue that you can add your comments to. If you have a bug, error or discrepancy you'd like the team to help and investigate, please use the [bug-request template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/blob/master/.gitlab/issue_templates/bug_request.md).

With [Agile Delivery](https://about.gitlab.com/solutions/agile-delivery/) being one of the solutions that GitLab (as a product) addresses, the Marketing Operations team aims to follow many of the agile methodologies. To help us in that effort, please create any Marketing Operations issues in the following format.

**Note:** This format is the [Agile user story](https://www.agilealliance.org/glossary/user-story-template/) format and helps the issue-requester (you) and the MOps team by clearly stating **what** as well as **why** for each request and concern.

**Format:** `As a _____ (role in marketing), I would like to ____________(need), so that ________________(reason).`

MktgOps uses a [global issue board](https://gitlab.com/groups/gitlab-com/-/boards/825719) and will capture any issue in any group/sub-group in the repo since we work with so many other teams. There is also a [`Marketing Operations` project](https://gitlab.com/gitlab-com/marketing/marketing-operations) within the [`Marketing` project](https://gitlab.com/gitlab-com/marketing).

Please note that there is now a new [Marketing Strategy and Performance project](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance) for tracking work around Marketing overall strategy as well as reporting, dashboards and analysis.

### Use of Epics

In order to categorize various related issues, we will make use of epics to help a team member organize our work, especially if it crosses multiple milestones. If it is a MktgOps epic, we will add the `In Epic` label to it, so that we can easily see that it is part of an epic on our kanban board.

### Labeling

We use labels for several purposes. One is to categorize the tool or area that is affected. Another is to show priority. And lastly, we may use them to identify the stage they are in, either before or after being put into a milestone/iteration. We generally use the stage labels for our kanban Columns.

**Categories:**

- `MktgOps - FYI`: Issue is not directly related to operations, no action items for MktgOps but need to be aware of the issue
- `MktgOps - List Import`: Used for list imports of any kind - event or general/ad hoc (do not also use To Be Triaged scoped label)
- `Marketo`, `Bizible`, `Cookiebot`, `Demandbase`, `Drift`, `GDPR`, `LeanData`, `LinkedIn Sales Navigator`, `Outreach-io`, `PathFactory`, `Periscope`, `Sigstr`, `ZoomInfo`, `Smartling`, `Vimeo`: used to highlight one of our tech stack tools
- `In Epic`: bright yellow label to show that it is part of a MktgOps epic

**Priorities:**

- `MktgOps-Priority::1 - Top Priority`: Issue that is related to a breaking change, OKR focus, any other prioritized project by MktgOps leadership. This category will be limited because not everything can be a priority.
- `MktgOps-Priority::2 - Action Needed`: Issue has a specific action item for MktgOps to be completed with delivery date 90 days or less from issue creation date. This tag is to be used on projects/issues not owned by MktgOps (example: list upload).
- `MktgOps-Priority::3 - Future Action Needed`: Issue has a specific action item for MktgOps, the project/issue is not owned by MktgOps and delivery or event date is 90 days or more from issue creation.

**Stages:**

_Backlog_

- `MktgOps::0 - To Be Triaged`: Issue initially created, used in templates, the starting point for any label that involves MktgOps (except for List Uploads); no real discussion on the issue; generally unassigned
- `MktgOps::1 - Planning`: Issues assigned to a MktgOps team meber and are currently being scoped/considered but are not being actively worked on yet.
- `MktgOps::2 - On Deck`: Issues that have been scoped/considered and will be added to an upcoming iteration/milestone.
- `MktgOps::5 - On Hold`: Issue that is not within existing scope of Mktg OPS current targets, or another department as deprioritized. May be a precursor to being closed out.
- `MktgOps::6 - Blocked`: Issue that was being worked on by Mktg Ops and at least one other team wherein MktgOps is waiting for someone else/another team to complete an action item before being able to proceed. Could be locked by MktgOps-related task/issue, or external (non-GitLab) blocker.

_In Milestone_

- `MktgOps::3 - In Process`: Issues that are actively being worked on in the current two-week sprint/milestone.
- `MktgOps::4 - UAT`: Issues that MktgOps has completed its required tasks for and is ready for User Acceptance Testing/review and approval by the Requester/Approver.
- `MktgOps::7 - Completed`: MktgOps has completed their task on this issue although the issue may not be closed. The hope is that we will be using this one less as we simply scope an issue so that MktgOps can just close it when complete.

**Handbook Updates**:

When making an update to a handbook page for `ABM`, `FMM`, `MOps`, or `SDR` handbook pages (or sub-pages), we have a Zapier workflow set up that will push the MR (upon merge) to the related slack channel to ensure our teams are aware of any change that is made to the page. In order for the merged MR to show up in the respective slack channel, you must add one of the following corresponding `labels` on the MR.

| **Label you add**       | **Slack channel the merged MR pushes to** |
| ----------------------- | ----------------------------------------- |
| `MktgOps-HB Update`     | `hbupdate-mktgops`                        |
| `FMM-HB Update`         | `fieldmarketing-FYI`                      |
| `SDR-HB Update`         | `hbupdate-sdr`                            |
| `ABM-HB Update`         | `hbupdate-abm`                            |

### Marketing Ops Calendar

<iframe src="https://calendar.google.com/calendar/embed?src=gitlab.com_c_u3gaaimqhrc3d753nbol3houkg%40group.calendar.google.com&ctz=America%2FLos_Angeles" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>

### Milestones

The MktgOps team works in two week sprints/iterations which are tracked as **Milestones** at the `GitLab.com` level. Each Ops individual contributor (IC) is responsible for adding issues to the milestone that will be completed in the two week time frame. If needed, the IC will separate the main issue into smaller pieces that are _workable_ segments of the larger request.

The MktgOps team will only create a milestone one beyond the current iteration, so at any given time there will be the **current** milestone and **upcoming** milestone, any other issue that is not included will be added into future milestones &/or added as work is completed in the current milestone.

A milestone cannot be closed nor marked complete until the milestone's accompanying merge request has been merged. Within every milestone there is a `WIP` merge request with all commits being changes to our handbook. All team members contribute their changes to the milestone merge request. The merge request should be tagged with marketing operations labels and the current milestone.

### Focus Fridays

The Marketing Operations team had started an experiment on 2020-04-20 to commit to no internal meetings one day of the week. Now the entire Marketing team has moved to Focus Fridays. Please try not to schedule meetings for team members on Fridays, so they can devote time for deep work in milestone-related issues. Thanks!

### Office Hours

Marketing Operations has weekly office hours on each Tuesdays. The team will be available for 30 min to answer any quick and easy tool related questions. We are alternating between 9am PST and Noon PST. Meaning every other Tuesday we will either have a morning or noon session, but not both. The office hour is for quick and easy questions, and it is not meant for issue related questions.

See the [Marketing Operations Office Hour Calendar](https://calendar.google.com/calendar/u/0?cid=Y19yOTcxcGRvM2xtamVxMTZuYWEyZnB2cDVrOEBncm91cC5jYWxlbmRhci5nb29nbGUuY29t) for more details on the alternating times and meeting links.

### Operational Timeline of Changes

Periodically Marketing Operations makes significant changes to our system and processes that affect overall tools, data and reporting or uncovers significant changes that affected reporting. As such we have a shared [Operational timeline of events](https://drive.google.com/open?id=1vhGvEszndMJ4B9EshGFSdTTABwUzBzDObz93vkMSFGA). The MktgOps and Strategy/Perf teams update this document as needed as changes are made.

## Important Resources

- [Marketing Metrics](/handbook/marketing/marketing-operations/marketing-metrics)
- [Marketing Owned Provisioning Instructions](/handbook/marketing/marketing-operations/marketing-owned-provisioning)

## [List Imports](/handbook/marketing/marketing-operations/list-import)

## Tech Stack

For information regarding the tech stack at GitLab, please visit the [Tech Stack Applications page](/handbook/business-ops/tech-stack-applications/#tech-stack-applications) of the Business Operations handbook where we maintain a comprehensive table of the tools used across the company.

The main tools used by Marketing and integrated with Salesforce are:

- [Marketo](/handbook/marketing/marketing-operations/marketo)
- [Outreach.io](/handbook/marketing/marketing-operations/outreach)
- [Drift](/handbook/marketing/marketing-operations/drift)
- [LeanData](/handbook/marketing/marketing-operations/leandata)
- [PathFactory](/handbook/marketing/marketing-operations/pathfactory)
- [Sigstr](/handbook/marketing/marketing-operations/sigstr)
- [Demandbase](/handbook/marketing/revenue-marketing/account-based-marketing/demandbase)
- [ZoomInfo](/handbook/marketing/marketing-operations/zoominfo/)
- LinkedIn Sales Navigator
- [Bizible](/handbook/marketing/marketing-operations/bizible/)

Other tools directly used by Marketing and maintained by Marketing Operations:

- [Bizzabo](/handbook/marketing/marketing-operations/bizzabo)
- [Cookiebot](/handbook/marketing/marketing-operations/cookiebot)
- Disqus
- Eventbrite
- Figma
- Frame.io
- Google Adwords
- Google Analytics
- Google Search Console
- Google Tag Manager
- Hotjar
- Keyhole
- [Litmus](/handbook/marketing/marketing-operations/litmus)
- MailChimp
- Rev
- Screaming Frog
- SEMrush
- [Smartling](/handbook/marketing/marketing-operations/smartling)
- Sprout Social
- Swiftype
- Survey Monkey
- Tweetdeck
- [YouTube](/handbook/marketing/marketing-operations/youtube/)
- [Vimeo](/handbook/marketing/marketing-operations/vimeo/)
- [Zapier](/handbook/marketing/marketing-operations/zapier/)

### Requesting access to an existing tool

To request access to an existing tool in the stack, [please follow the access request process](https://about.gitlab.com/handbook/business-ops/team-member-enablement/onboarding-access-requests/access-requests/) as outlined in the business operations handbook.

If you are working with a contractor or consultant that requires access to a tool in our stack, [please follow the professional services access request process](https://about.gitlab.com/handbook/finance/procurement/vendor-contract-professional-services/#-step-7--create-professional-services-access-request-optional) as outlined in the procurement handbook.

### Requesting a new tool

If you are interested in or would like to request a new tool be added to the tech stack, [please submit an issue using the tools eval issue template](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issuable_template=tools_eval) in the Marketing Operations repository. Marketing Operations should be included in new tool evaluations to account for system integrations, budget, etc. Any new tools desired after the budget is set will be handled by transferring budget from the other department to Marketing Operations.

## Marketing Expense Tracking

| **GL Code** | **Account Name**       | **Purpose**                                                                                                                                  |
| ----------- | -----------------------| -------------------------------------------------------------------------------------------------------------------------------------------- |
| 6060    | Software Subscriptions     | All software subscriptions                                                                                                                       |
| 6100    | Marketing                  | Reserved for Marketing GL accounts                                                                                                               |
| 6110    | Marketing Site             | All agency fees and contract work intended to improve the marketing site                                                                         |
| 6120    | Advertising                | All media buying costs as well as agency fees and software subscriptions related to media buying                                                 |
| 6130    | Events                     | All event sponsorships, booth shipping, event travel, booth design, event production as well as agency fees and software costs related to events |
| 6135    | Swag                       | Any swag related expense                                                                                                                         |
| 6140    | Email                      | All 3rd party email sponsorships as well as agency fees and software costs related to mass email communications and marketing automation         |
| 6150    | Brand                      | All PR, AR, content, swag and branding costs                                                                                                     |
| 6160    | Prospecting                | Not used - All costs related to prospecting efforts                                                                                              |

### Invoice Approval

Marketing Operations approves any invoices that have not already been coded and approved through a Finance issue or that exceed the original cost estimate. We make use of Tipalti for this process. Team leads will confirm that services were performed or products were received also through Tipalti. Campaign tags are used to track costs related to events and campaigns.

## Lead Scoring, Lead Lifecycle, and MQL Criteria

A Marketing Qualified Lead is a lead that has reached a certain threshold, we have determined to be 100 points accumulated, based on demographic/firmographic and/or behavioral information. The `Person Score` is comprised of various actions and/or profile data that are weighted with positive or negative point values. `Person Score` is one of the indicators used by LeanData to determine whether a lead needs to be assigned. Details about this process can be found on the [LeanData page](https://about.gitlab.com/handbook/marketing/marketing-operations/leandata/#lead-routing-workflow). You can find more details about the scoring model on the [Marketo Page](/handbook/marketing/marketing-operations/marketo/#scoring-model)

## Campaigns and Programs

Campaigns are used to track efforts of marketing tactics - field events, webcasts, content downloads. The campaign types align with how marketing tracks spend and align the way records are tracked across three of our core systems (Marketo, Salesforce and Bizible) for consistent tracking. Leveraging campaigns aligns our efforts across Marketing, Sales and Finance.

Go to the [Campaigns and Programs Page](/handbook/marketing/marketing-operations/campaigns-and-programs/#campaigns) to view all of the campaign types, their progression statuses and cost tracking. That page also includes directions for set up in Marketo and Salesforce.

## Email Management

Email database management is a core responsibility for MktgOps. Ensuring GitLab is following email best practices, in compliance with Global spam laws and overall health of active database are all priorities.

Email creation, campaigns, follow up reporting and sending is the responsibility of the Marketing Campaign Managers. To request an email of any kind, please see the [instructions](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/emails-nurture/#ad-hoc-one-time-emails---requesting-an-email) in the revenue marketing section of the handbook.

### Email Communication Policy

Please [visit the legal page](/handbook/legal/marketing-collaboration/#marketing-rules-and-consent-language) to view all of the Marketing Rules and Consent Language.

The Mural below shows the opt-in and opt-out/unsubscribe workflows for all forms, list imports and individual subscriptions.
<div style="width: 600px;" class="embed-thumb"> <div style="position: relative; height: 0;overflow: hidden; height: 400px; max-width: 800px; min-width: 320px; border-width: 1px; border-style: solid; border-color: #d8d8d8;"> <div style="position: absolute;top: 0;left: 0;z-index: 10; width: 600px; height: 100%;background: url(https://murally.blob.core.windows.net/thumbnails/gitlab2474/murals/gitlab5736.1594675938009-5f0cd2e2ffb2423070a97d96-46527d35-3c6d-4dc0-b290-83d58595374c.png?v=5788e460-d3d3-40d7-942d-0a76151f9569) no-repeat center center; background-size: cover;"> <div style="position: absolute;top: 0;left: 0;z-index: 20;width: 100%; height: 100%;background-color: white;-webkit-filter: opacity(.4);"> </div> <a href="https://app.mural.co/t/gitlab2474/m/gitlab5736/1594675938009/095286e912a2f8de19edd53e68a5e4e51d071db0" target="_blank" rel="noopener noreferrer" style="transform: translate(-50%, -50%);top: 50%;left: 50%; position: absolute; z-index: 30; border: none; display: block; height: 50px; background: transparent;"> <img src="https://app.mural.co/static/images/btn-enter-mural.svg" alt="ENTER THE MURAL" width="233" height="50"> </a> </div> </div></div>

At GitLab, we strive to communicate with people in a way that is beneficial to them. We always include the unsubscribe link in our communications, and we respect the unsubscribe list. In addition to the unsubscribe button at the bottom of all of our emails, we have available our [Email Subscription Center](/company/preference-center/), where people can control their email communication preferences.

Certain emails can bypass unsubscribe by being marked as `operational`. Operational emails need to be transactional and should not be marketing in nature. Examples include critical system alerts, auto-responder emails after an action is taken (ex. registration confirmation), event reminders with link to attend event, post event recording, and account balances.
Emails that contain mostly marketing or promotional content like newsletters, event invites and sales emails are not considered `operational`. Only Mops and certain MPMs have access to this feature in Marketo. If you have any questions on whether or not your email is operational, contact Mops and/or Legal.

In Marketo, we have communication limits set so a recipient cannot receive more than 2 emails per day, and/or 7 emails per week. This does not include `operational` emails. Once a person has hit that limit, they are supressed from email groups until they fall back under the threshold.

### Types of Email

**Breaking Change Emails**
These are transactional emails, almost always to our user base, that provide very selective needed information. This is an`operational` email that overrides the unsubscribe and would not need to comply with marketing email opt-out. Usage example: GitLab Hosted billing change, Release update 9.0.0 changes, GitLab Page change and Old CI Runner clients.
It is very important to have Engineering and/or Product team (whoever is requesting this type of email) help us narrow these announcements to the people that actually should be warned, so we are communicating to a very specific targeted list. In some cases, these will be sent via [Mailchimp](/handbook/marketing/marketing-operations/marketo/#mailchimp-sends).

**Newsletter**
Sent bi-monthly (every 2 weeks). Content Team is responsible for creating the content for each Newsletter. Users can [subscribe to the newsletter](/company/contact/) through the blog, contact us page, and CE download page.

**Security Alerts**
Sent on an as needed basis containing important information about any security patches, identified vulnerabilities, etc. related to the GitLab platform. These emails are purely text based and again are transactional in nature.  Users can [subscribe to security notices](/company/contact/#security-notices) on the GitLab Contact us page.

**Webcasts**
Invitation and/or notification emails sent about future webcasts.

**Live Events**
Invitation emails to attend a live event, meet-up, or in-person training. These emails are sent to a geo-locational subset of the overall segment. This type of email is also used when we are attending a conference and want to make people aware of any booth or event we may be holding and/or sponsoring.

## Website Form Management

The forms on about.gitlab are embedded Marketo forms. Any changes to the fields, layout, labels and CSS occur within Marketo and can be pushed live without having to make any changes to the source file on GitLab. When needing to change or embed a whole new form, please open an issue using the `form_request` [template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/blob/master/.gitlab/issue_templates/form_request.md). For form field requirements, please refer to this [page](/handbook/marketing/marketing-operations/marketo/#forms).

Each Marketo form should push an event after successful submission to trigger events in Google Analytics. We use the following event labels to specify which events to fire.

1. `demo` for static demos on `/demo/` and `/demo-leader/`
1. `webcasts` for forms on any page in `/webcast/`
1. `trial` for the form on `/free-trial/`
1. `resources` for forms on any page in `/resources/`
1. `events` for forms on any page in `/events/`
1. `services` for form on `/services/`
1. `sales` for form on `/sales/`
1. `public-sector` for forms on `/solutions/public-sector/`
1. `mktoLead` legacy custom event label used on Newsletter subscription form submission events. Currently used for primary, security, and all-remote newsletter form submissions.

We add the following line above `return false` in the form embed code. Please update the event label from `demo` to reflect the appropriate form completion.

```
dataLayer.push(
{
  'event' : 'demo',
  'mktoFormId' : form.getId(),
  'eventCallback' : function()
  {}, 'eventTimeout' : 3000
});
```

## Initial Source

`Initial Source` is the first "known" touch attribution or when a website visitor becomes a known name in our database, once set it should never be changed or overwritten. For this reason Salesforce is set up so that you are unable to update the `Initial Source` field. If merging records, keep the `Initial Source` that is oldest (or set first). When creating Lead/Contact records and you are unsure what `Initial Source` should be used, ask in the `#mktgops` Slack channel. `Initial Source` in Marketo is named `Person Source`, and should only update when empty.

The values listed below are the only values currently supported. If you attempt to upload or import leads or contacts into Salesforce without one of these initial sources you will encounter a validation rule error. If you think that there needs to be a new Initial Source added to this list and into Salesforce please [open an issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new) with the marketing ops team.

The `Initial Source` table below is current as of 7 July 2020.

Status in the table below means:

- Active = can be selected from picklist
- Inactive = cannot be selected from picklist, but a record may exist with this source

| Source | Source Bucket | Definition and/or transition plan | Status* |
| ------ | ------------- | --------------------------------- | ------- |
| CE Download | core | Downloaded CE version of GitLab | Active |
| CE Usage Ping | core | Created from CE Usage Ping data | Active |
| CORE Check-Up | core |  | Active |
| Demo | inbound | Filled out form to watch demo of GitLab | Active |
| Education | inbound | Filled out form applying to the Educational license program | Active |
| Email Request | inbound | Used when an email was received through an alias (_will be deprecated_) | Active |
| Email Subscription | inbound | Subscribed to our opt-in list either in preference center or various email capture field on GitLab website | Active |
| Gated Content - General | inbound | Download an asset that does not fit into the other Gated Content categories | Active |
| Gated Content - eBook | inbound | Download a digital asset categorized as an eBook | Active |
| Gated Content - Report | inbound | Download a gated report | Active |
| Gated Content - Video | inbound | Watch a gated video asset | Active |
| Gated Content - Whitepaper | inbound | Download a white paper | Active |
| GitLab.com | inbound | Registered for GitLab.com account | Active |
| Newsletter | inbound |  | Active |
| OSS | inbound | Open Source Project records related to the OSS offer for free licensing | Active |
| Request - Contact | inbound | Filled out contact request form on GitLab website | Active |
| Request - Professional Services | inbound | Any type of request that comes in requesting to engage with our Professional Services team | Active |
| Security Newsletter | inbound | Signed up for security alerts | Active |
| Trial - Enterprise | trial | In-product or web request for self-hosted Enterprise license | Active |
| Trial - GitLab.com | trial | In-product SaaS trial request | Active |
| Web | inbound |  | Active |
| Web Chat | inbound | Engaged with us through website chat bot | Active |
| Consultancy Request | inbound |  | Active |
| Drift | inbound |  | Active |
| Request - Community | inbound |  | Active |
| Request - Public Sector | inbound |  | Active |
| Startup Application | inbound |  | Active |
| Other | Other |  | Active |
| AE Generated | outbound | Sourced by an Account Executive through networking or professional groups | Active |
| Clearbit | outbound |  | Active |
| Datanyze | outbound |  | Active |
| DiscoverOrg | outbound |  | Active |
| Leadware | outbound | Sourced by an SDR through networking or professional groups | Active |
| LinkedIn | outbound |  | Active |
| Prospecting | outbound |  | Active |
| Prospecting - General | outbound |  | Active |
| Prospecting - LeadIQ | outbound |  | Active |
| SDR Generated | outbound | Sourced by an SDR through networking or professional groups | Active |
| Zoominfo | outbound |  | Active |
| Advertisement | paid demand gen |  | Active |
| Conference | paid demand gen | Stopped by our booth or received through event sponsorship | Active |
| Field Event | paid demand gen | Paid events we do not own but are active participant (Meetups, Breakfasts, Roadshows) | Active |
| Owned Event | paid demand gen | Events that are created, owned, run by GitLab | Active |
| Promotion | paid demand gen |  | Active |
| Virtual Sponsorship | paid demand gen |  | Active |
| Purchased List | purchased list |  | Active |
| Employee Referral | referral |  | Active |
| Partner | referral | GitLab partner sourced name either through their own prospecting and/or events | Inactive |
| Channel Qualified Lead | referral| GitLab partner sourced, previously `partner`| Active|
| Word of Mouth | referral |  | Active |
| Event Partner | referral |  | Inactive |
| Existing Client | referral |  | Active |
| External Referral | referral |  | Active |
| Webcast | virtual event | Register for any online webcast (not incl `Demo`) | Active |
| Webinar | virtual event |  | Active |
| Web Direct | web direct | Created when purchase is made direct through the portal (check for duplicates & merge record if found) | Active |

## Lead and Contact Statuses

The Lead & Contact objects in Salesforce have unified statuses with the following definitions. If you have questions about current status, please ask in #lead-questions channel on Slack.

| Status | Definition |
| ------ | ---------- |
| Raw | Untouched brand new lead |
| Inquiry | Form submission, meeting @ trade show, content offer |
| MQL | Marketing Qualified through systematic means |
| Accepted | Actively working to get in touch with the lead/contact |
| Qualifying | In 2-way conversation with lead/contact |
| Qualified | Progressing to next step of sales funnel (typically OPP created & hand off to Sales team) |
| Unqualified | Contact information is not now or ever valid in future; Spam form fill-out |
| Nurture | Record is not ready for our services or buying conversation now, possibly later |
| Bad Data | Incorrect data - to potentially be researched to find correct data to contact by other means |
| Web Portal Purchase | (Temporary, to be merged by RingLead) Used when lead/contact completed a purchase through self-serve channel & duplicate record exists |
