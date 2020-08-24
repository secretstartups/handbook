---
layout: handbook-page-toc
title: Demand Generation Campaigns Handbook
description: Demand Generation Campaigns Handbook
twitter_image: '/images/tweets/handbook-marketing.png'
twitter_site: "@gitlab"
twitter_creator: "@gitlab"
---
## On this page 
{:.no_toc .hidden-md .hidden-lg}
- TOC
{:toc .hidden-md .hidden-lg}

# Demand Gen Campaigns Overview
{:.no_toc}
---
## Goals

### MQL Targets
| Fiscal Quarter | Large |  Mid-Market |  SMB |
| ------ | ------ | ------ | ------ |
| Q3FY21 | TBD | TBD | TBD |
| Q4FY21 | TBD | TBD | TBD |
| Q1FY22 | TBD | TBD | TBD |
| Q2FY22 | TBD | TBD | TBD |

*Targets are based on the original [FY21-22 Segment Marketing Plan](https://docs.google.com/presentation/d/1p4EmaoSb35d8ZnjKags1gUGF5T9afJW6RhBO8TR_VgA/edit#slide=id.p4) (GitLab internal team members may view this information).*

## Q3 OKRs
[See Epic >](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1309)
* [Accelerated Trial Motion in Use Case Campaigns](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1304)
* [Overhaul self-managed trial email nurture](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1285)
* [Overhaul SaaS trial email nurture](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1303)

## Communication
In line with GitLab's overall [communication guidelines](https://about.gitlab.com/handbook/communication/), campaign managers work through MRs first and issues second (in order to preserve documentation), and our slack channel [#marketing_programs](https://gitlab.slack.com/archives/CCWUCP4MS) is used for team updated and quick questions.
The [#demand-gen](https://gitlab.slack.com/archives/CJFB4T7EX) channel is used for weekly check-ins and interaction with the larger demand generation team.

### Meeting Cadence
Most of our team meetings are recorded and can be found [here](https://drive.google.com/drive/u/1/folders/1GDkvqVhimLDnX744eh9YS6_qHhKRafmJ).

* Tuesdays - MPM Connect team call
* Wednesdays - Demand Generation team call
* Thursdays - "No work talk" demand gen team handgout
* Thursdays - Marketing strategy & tactics call

### The Handbook
Is our single source of truth (SSoT) for processes and relevant links

*  Individual teams should link back to these SSoT sections to avoid confusion
*  Collaborative tactics contain their own handbook pages
*  The handbook will be iterated on as we establish and optimize processes for optimal efficincy

## Project Management

### Campaigns Team Intake Process
Beginning Q3 FY21, the demand gen campaigns team will begin an issue intake process to evaluate comprehensive details of request and assign based on milestone bandwidth and priorities. Requests may be submitted using the correct issue templates.

Issues will be triaged as demonstrated in the diagram below. Please note: All required details in a given issue template must be completed in order for the SLA timeline to begin.

<div style="width: 600px;" class="embed-thumb"> <div style="position: relative; height: 0;overflow: hidden; height: 400px; max-width: 800px; min-width: 320px; border-width: 1px; border-style: solid; border-color: #d8d8d8;"> <div style="position: absolute;top: 0;left: 0;z-index: 10; width: 600px; height: 100%;background: url(https://murally.blob.core.windows.net/thumbnails/gitlab2474/murals/gitlab2474.1597863660114-5f3d76ecffb2423070b17376-61c7931a-18e2-4a73-90dd-eafcb724b939.png?v=bdac39bf-bec1-491a-bd64-61e34be25719) no-repeat center center; background-size: cover;"> <div style="position: absolute;top: 0;left: 0;z-index: 20;width: 100%; height: 100%;background-color: white;-webkit-filter: opacity(.4);"> </div> <a href="https://app.mural.co/t/gitlab2474/m/gitlab2474/1597863660114/68ceeff46af5371c1167e69754b2e382734090d9" target="_blank" rel="noopener noreferrer" style="transform: translate(-50%, -50%);top: 50%;left: 50%; position: absolute; z-index: 30; border: none; display: block; height: 50px; background: transparent;"> <img src="https://app.mural.co/static/images/btn-enter-mural.svg" alt="ENTER THE MURAL" width="233" height="50"> </a> </div> </div> <p style="margin-top: 10px;margin-bottom: 60px;line-height: 24px; font-size: 16px;font-family: Proxima Nova, sans-serif;font-weight: 400; color: #888888;"> </p></div>

#### Intake process labels
* **mktg-status::triage** - the issue will be evaluated to determine if full details are included, and ask questions as needed if the scope/details are not clear.
* **mktg-status::blocked** - there were insufficient details in the issue
  - The requester must provide the details and then move the status back to `mktg-status::triage` in order for the request to be reviewed again.
  - Please note: issue submission does not begin the SLA timeline; sufficient details begin the SLA timeline
* **mktg-status::read-to-build** - details were sufficient and the request fits into overall marketing strategy
  - Requests aligned to an OKR will be given precedence in priorities
* **mktg-status::wip** - the issue is assigned and moved into a time-based milestone
* **mktg-status::plan** - this is used for work that is in an earlier stage of planning and a specific request has not been made
  - This will likely be used mainly by campaign managers on issues that are not high priority but there is a desire to capture the idea/notes.

#### Intake process daily/weekly steps
1. Team manager completes daily review of [issues in triage](https://gitlab.com/groups/gitlab-com/-/boards/1919630?&label_name[]=Marketing%20Programs) assessing the following standards:
   - are all details in the `Submitter Checklist` sufficiently complete in order to begin work? (if yes, request moves to "ready-to-build" status)
   - does the request align to an OKR? (if yes, prioritize)
   - does the request align to overall marketing goals? (if no, consider realistic timeline given priorities)
1. At the start of this process, we will test the process of accepting work:
   - upon add of "ready-to-build" status, the `volunteer` label will be applied, alerting the team
   - ideally the honor system will be met, with volunteer issues being picked up equally and spread across timezones - totals will be reviewed in milestone retro :heart:
   - if an issue is not picked up within 48 hours, team manager will assess team milestones and bandwidth to assign

#### Project management automation
Rules will now apply the "volunteer" label when an issue has been moved to the status of "ready-to-build" (campaign managers will subscribe to this label at the start of the triage process)

#### Shortcut issue comments for project management
**When a team member is picking up an issue from the backlog:**
```
/label ~"mktg-status::wip" 
/assign @
/milestone %mktg:
```
This will change the status to wip (work in progress), allow quick assignment and add to the appropriate milestone.

### Milestones
The campaigns team uses the overall 2-week marketing milestones (format of [Mktg: YYYY-MM-DD](https://gitlab.com/groups/gitlab-com/-/milestones?utf8=%E2%9C%93&search_title=mktg%3A+&state=&sort=)) to organize, prioritize, and balance campaigns, projects, and requests.
  * The date in the milestone name is the END date of miltesone (Sunday)
  * Note: Use of milestones was introduced to the campaigns team as of 2020-07-21.
  * If issues in a milestone are not closed out by end of milestone, they are pulled to the next milestone. We will document **total issues** and **total weight** moved, to understand relative commitment levels and avoid overcommitment as we begin using milestones.

**Q3 FY21 Marketing Milestones:**
* [Mktg: 2020-08-02](https://gitlab.com/groups/gitlab-com/-/milestones/224)
* [Mktg: 2020-08-16](https://gitlab.com/groups/gitlab-com/-/milestones/225)
* [Mktg: 2020-08-30](https://gitlab.com/groups/gitlab-com/-/milestones/226)
* [Mktg: 2020-09-13](https://gitlab.com/groups/gitlab-com/-/milestones/227)
* [Mktg: 2020-09-27](https://gitlab.com/groups/gitlab-com/-/milestones/228)
* [Mktg: 2020-10-11](https://gitlab.com/groups/gitlab-com/-/milestones/229)
* [Mktg: 2020-10-25](https://gitlab.com/groups/gitlab-com/-/milestones/230)

**Campaigns Team Backlog Milestones:**
* [DG-Backlog:Requests](https://gitlab.com/groups/gitlab-com/-/milestones/260) - holds issue requests to be triaged, typically related to Marketo (landing pages, emails, etc.)
* [DG-Backlog:Ideas](https://gitlab.com/groups/gitlab-com/-/milestones/258) - holds issue requests related to campaign and webcast ideas submitted to demand generation
* [DG-Backlog:Documentation](https://gitlab.com/groups/gitlab-com/-/milestones/248) - holds issues related to needed documentation (handbook, issues, etc.)
* [DG-Backlog:General](https://gitlab.com/groups/gitlab-com/-/milestones/256) - holds general issue backlog that don't fit into request, ideas, or documentation/process

## Issue Templates
In the campaigns project, you will see the following issuable templates. These templates clarify what information and details are required in order to complete the request.
* [email-request](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=email-request)
* [zoom-license-date-request](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=zoom-license-date-request)
* [idea-campaign](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=idea-webcast)
* [idea-webcast](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=idea-campaign)

### Boards and Lists

#### Boards
* [Request Intake Board](https://gitlab.com/groups/gitlab-com/-/boards/1919630?&label_name[]=Marketing%20Programs) - this board provides a high-level status view of incoming issue requests.
* [All Milestones Board](https://gitlab.com/groups/gitlab-com/-/boards/1884920?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Marketing%20Programs)
* All Milestones by Team Member
  * [Agnes Oetama](https://gitlab.com/groups/gitlab-com/-/boards/1884920?scope=all&utf8=%E2%9C%93&state=opened&assignee_username=aoetama)
  * [Eirini Pan](https://gitlab.com/groups/gitlab-com/-/boards/1884920?scope=all&utf8=%E2%9C%93&state=opened&assignee_username=eirinipan)
  * [Indre Kryzeviciene](https://gitlab.com/groups/gitlab-com/-/boards/1884920?scope=all&utf8=%E2%9C%93&state=opened&assignee_username=ikryzeviciene)
  * [Jackie Gragnola](https://gitlab.com/groups/gitlab-com/-/boards/1884920?scope=all&utf8=%E2%9C%93&state=opened&assignee_username=jgragnola)
  * [Jenny Tiemann](https://gitlab.com/groups/gitlab-com/-/boards/1884920?scope=all&utf8=%E2%9C%93&state=opened&assignee_username=jennyt)
  * [Nout Boctor-Smith](https://gitlab.com/groups/gitlab-com/-/boards/1884920?scope=all&utf8=%E2%9C%93&state=opened&assignee_username=nbsmith
  * [Zac Badgley](https://gitlab.com/groups/gitlab-com/-/boards/1884920?scope=all&utf8=%E2%9C%93&state=opened&assignee_username=zbadgley)
* All Team Members by Milestone (Current Quarter)
  - [Mktg: 2020-08-30](https://gitlab.com/groups/gitlab-com/-/boards/1948068?scope=all&utf8=%E2%9C%93&milestone_title=Mktg%3A%202020-08-30)
  - [Mktg: 2020-09-13](https://gitlab.com/groups/gitlab-com/-/boards/1948068?scope=all&utf8=%E2%9C%93&milestone_title=Mktg%3A%202020-09-13)
  - [Mktg: 2020-09-27](https://gitlab.com/groups/gitlab-com/-/boards/1948068?scope=all&utf8=%E2%9C%93&milestone_title=Mktg%3A%202020-09-27)
  - [Mktg: 2020-10-11](https://gitlab.com/groups/gitlab-com/-/boards/1948068?scope=all&utf8=%E2%9C%93&milestone_title=Mktg%3A%202020-10-11)
  - [Mktg: 2020-10-25](https://gitlab.com/groups/gitlab-com/-/boards/1948068?scope=all&utf8=%E2%9C%93&milestone_title=Mktg%3A%202020-10-25)

#### Lists
**In marketing programs project (to be sunsetted):**
* [Issues in triage status (MPM)](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Atriage)
* [Issues in blocked status (MPM)](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Ablocked)
* [Issues in ready-to-build status (MPM)](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Aready-to-build)
* [Issues in plan status (MPM)](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Aplan)

**In campaigns project (transition of new requests to new project):**
* [Issues in triage status (campaigns project)](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Atriage)
* [Issues in blocked status (campaigns project)](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Ablocked)
* [Issues in ready-to-build status (campaigns project)](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Aready-to-build)
* [Issues in plan status (campaigns project)](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Aplan)

### Tips & Tricks

#### Creating a MacBook shortcut for repetitive statements
**Example:** in an issue to update all of MPM, instead of typing out every name, I have added a shortcut in my computer to populate all of the MPMs GitLab handles when I type `asdf + Enter`.

**How to:**
* On your Mac, choose Apple menu (ever-present top left logo)
* Go to `System Preferences`
* Click the `Keyboard` section
* Click `Text` on the top  nav options
* Cick the `+` at the bottom of the option list
* In `Replace` column, add the shortcut that you would type in to populate the repetitive text
* In `With` column, add the repetitive text that you want to populate when you type in the shortcut


# Reporting

## Integrated campaigns reporting

Marketing Programs uses Sisense dashboards to report on integrated campaigns performance, specifically:

1. [WIP: Integrated Campaigns Overview Dashboard](https://app.periscopedata.com/app/gitlab/631669/WIP:-Agnes-Oetama-IC-Dashboard): 
This dashboard provides quick insights on campaign performance and monitors the impacts of campaign optimizations on various funnel metrics over the life of the campaign.
2. [WIP: Integrated Campaigns Table Summary](https://app.periscopedata.com/app/gitlab/665451/WIP:-Agnes-IC-Campaign-Table-Summary): This dashboard measures and compares the performance of integrated campaigns and channels within each campaign.

The Integrated Campaigns dashboards use [Bizible touchpoints](https://about.gitlab.com/handbook/marketing/marketing-operations/bizible/#bizible-touchpoints) to track Inquiries, MQLs, and SDR Accepted metrics. We use the [Linear Bizible Attribution touchpoints model](https://about.gitlab.com/handbook/marketing/marketing-operations/bizible/#linear-attribution) to track Opportunities, Total IACV$, SAO, Pipeline IACV$, Won Deals count, and Won IACV $.

These dashboards were created by @aoetama and she is in the process of building out additional functionalities outlined in [this epic](https://gitlab.com/groups/gitlab-com/-/epics/629). 

### Key Metrics tracked on the Integrated campaign dashboards

- **Inquiries**: Form fills on the campaign landing page + form fills tagged with the campaign utms anywhere on our marketing site.
- **MQL**: Campaign inquiries that have MQL'ed (MQL date  is not blank).
- **SDR Accepted**: Number of campaign inquiries worked by the SDRs.
- **New Inquiries**: Number of new emails created from campaign inquiries.
- **New MQL**: Number of new emails generated by campaign inquiries that have MQL'ed (MQL date  is not blank).
- **New SDR Accepted**: Number of new emails generated by campaign inquiries worked by the SDRs.
- **[Linear] Opps Created**: Opportunities (All stages) attributed to  campaign inquiries using the linear model.
- **[Linear] Total IACV $**: IACV $ value of opportunities (all stages)  attributed to  campaign inquiries using the linear model.
- **[Linear] SAO**: Sales Accepted opportunities (Stage 1+) attributed to campaign inquiries using the linear model.
- **[Linear] Pipeline IACV $**: IACV$ value of Sales Accepted opportunities (Stage 1+) attributed to campaign inquiries using the linear model.
- **[Linear] Won Deals**: Closed won opportunities attributed to campaign inquiries  using the linear model.
- **[Linear] Won IACV$**: IACV$ value of Closed won opportunities attributed to campaign inquiries using the linear model.
- **Inquiry to MQL Conversion Rate**: Number of MQLs from the campaign(s)/Number of Inquiries from the campaign(s).
- **MQL to [Linear] SAO Conversion Rate**: Number of [Linear] SAOs from the campaign(s)/Number of MQLs from the campaign(s).
- **[Linear] SAO to [Linear] Closed Won Conversion Rate**: Number of [Linear] Won Deals from the campaign(s) / [Linear] SAOs from the campaign(s).

### 💡 Questions that the Integrated Campaign dashboards attempt to answer
#### Overall (WIP to deliver all)
* What is the pipe-to-spend for our integrated campaigns? How much pipeline are our integrated campaigns generating?
* What is the pipe-to-spend for our tactics (i.e. webcasts, gated content,etc.)? How much pipeline are our different tactics generating?
* Which channels (i.e. paid ads, social, organic) are contributing to the highest quantity AND quality leads?
* Which sources (i.e. webcast, content) are contributing to the highest quantity AND quality leads?
* Which mix of channels and source deliver the optimal pipe-to-spend? Which mix delivers the highest quantity AND quality leads?

#### By Campaign
* What is the pipe-to-spend for X campaign?
* How much pipeline has X campaign generated?
* What is the funnel movement for leads in X campaign? (Raw > Inquiry > MQL > Accepted > Qualifying > Qualified)
* Which mix of channel and source is delivering the highest quantity AND quality leads?
* Which channels are driving the most/least leads in X campaign?
* Which channels are driving the most/least qualified leads in X campaign? (i.e. moving to Accepted vs. Unqualified)
* How many leads from X campaign are being generated for each sales segment?
* How many leads from X campaign are being generated for each sales region?
* What is the breakdown of segment and region for X campaign?
* What are the most common disqualification criteria for leads in X campaign? (analyze Unqualified Reason)
