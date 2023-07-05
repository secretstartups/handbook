---
title: "Handbook Migration"
description: "Handbook Content is on the move.  This guide shares whats moving and when and why"
---

## The migration plan

### Timetable

| Order | Section                  | Total Pages | Markdown | ERB  |      Start |     Finish |   Status    |
| :---: | :----------------------- | :---------: | :------: | :--: | ---------: | ---------: | :---------: |
|   1   | Job Families             |     408     |   408    |  0   | 2023-03-28 | 2023-03-31 |  Completed  |
|   2   | TeamOps                  |      7      |    0     |  7   | 2023-04-19 | 2023-04-21 |  Completed  |
|   3   | Company Handbook Content |     52      |    49    |  3   | 2023-05-02 | 2023-05-12 | In-Progress |
|   4   | Tools and Tips           |     12      |    12    |  0   | 2023-05-16 | 2023-05-19 |  Completed  |
|   5   | Engineering              |    1144     |   574    | 547  | 2023-06-06 | 2023-02-16 |  Planning   |
|   6   | Infrastructure Standards |     21      |    21    |  0   | 2023-06-06 | 2023-06-09 |  Completed  |
|   7   | IT Self Service          |     12      |    12    |  0   | 2023-06-27 | 2023-06-30 |  Scheduled  |
|   8   | Company                  |     265     |   200    |  53  | 2023-07-25 | 2023-07-28 |  Planning   |
|   9   | CoST Team Pages          |     14      |    12    |  2   | 2023-08-15 | 2023-08-18 |  Scheduled  |
|  10   | Security                 |     153     |   148    |  3   | 2023-09-05 | 2023-09-08 |             |
|  11   | Finance                  |     83      |    67    |  16  | 2023-09-26 | 2023-09-29 |             |
|  12   | People Group             |     199     |   180    |  18  | 2023-10-17 | 2023-10-20 |             |
|  13   | Marketing                |     415     |   423    |  44  | 2023-11-14 | 2023-11-17 |             |
|  14   | Sales                    |     471     |   423    |  44  | 2023-12-05 | 2023-12-08 |             |
|  15   | Legal                    |     67      |    67    |  0   | 2024-01-16 | 2024-01-19 |             |
|  16   | Product                  |     414     |   351    |  64  | 2024-03-05 | 2024-03-15 |             |

#### Status Key

- **Scheduled** - This content will be migrated on the start date indicated
- **Planning** -  This content is in the planning stages of its migration and the start and finish dates are guides only
- **In Progress** - This content is in the process of being migrated
- **Completed** - This content has already been migrated to the new handbook
- **Blank** - This content has provisional start and completion dates but are subject to change

### Migration calendar

We are providing a Google Calendar with all the dates for the migration in.  This also includes public holidays and notable dates for the US and UK and other dates important to the migration team.

<iframe src="https://calendar.google.com/calendar/embed?src=c_618947374a015de8e6dc270caa157b5d19eb591f3b3dd791200ed02aac0a76e3%40group.calendar.google.com&ctz=Europe%2FLondon" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>

If the above iFrame is blank you can also access the [Calendar Directly](https://calendar.google.com/calendar/embed?src=c_618947374a015de8e6dc270caa157b5d19eb591f3b3dd791200ed02aac0a76e3%40group.calendar.google.com&ctz=Europe%2FLondon).

### Why this order

The order is based largely on the table of contents for the handbook but its been weighted slightly so that those sections with lots of Ruby Template files (`erb`) are pushed to the bottom of the list.  The idea is that content which is easier to move is the content which moves first.  This will give more time for those teams who are using ruby templating to move their content to markdown.  Where content can't be easily moved to Markdown this will give the Handbook team time to work with teams to find and develop solutions to meet their needs.

We also hope to run in parallel the migration of the Engineering content from the existing handbook to the new handbook which we hope will reduce the time it takes to migrate all of the content from `www-gitlab-com`.  If we are unable to do this we'll still migrate engineering after Company Handbook Content.

### Dates and order subject to change

This is the order we have identified to migrate content but it is subject to change based on factors such as operational need and how smooth the migration goes for each section.  We won't hesitate to bring forward a migration date if the current piece of content has moved smoothly and quickly.  We'll also communicate changes in [#whats-happening-at-gitlab](https://gitlab.slack.com/archives/C0259241C) and [#handbook](https://gitlab.slack.com/archives/C81PT2ALD) on Slack.

## What is moving next?

**What are we moving:** Company Handbook Content

**Target Date:** 2nd - 12th May 2023

### Why this content

This is content is at the start of the Handbooks Table of Contents.  Its a collection of smaller sections of the handbook that are widely referenced by other sections of the handbook.  The team responsible for the handbook and its migration sit within the Chief of Staff Team (CoST) so this represented a good opportunity to dogfood the migration.

### What content is moving

The following content has been earmarked as the next content to move.  This will be done as a series of small merge requests over the course of a week or so before the end of April.

- [x] [https://about.gitlab.com/handbook/values](https://about.gitlab.com/handbook/values) - `/sites/handbook/source/handbook/values`
- [x] [https://about.gitlab.com/handbook/only-healthy-constraints](https://about.gitlab.com/handbook/only-healthy-constraints) - `/sites/handbook/source/handbook/only-healthy-constraints`
- [x] [https://about.gitlab.com/handbook/documentation/](https://about.gitlab.com/handbook/documentation/) - `/site/handbook/source/handbook/documentation`
- [x] [https://about.gitlab.com/handbook/being-a-public-company/](https://about.gitlab.com/handbook/being-a-public-company/) - `/sites/handbook/source/handbook/being-a-public-company`
- [ ] [https://about.gitlab.com/handbook/communications](https://about.gitlab.com/handbook/communications) - `/sites/handbook/source/handbook/communications`
- [ ] [https://about.gitlab.com/handbook/about](https://about.gitlab.com/handbook/about) - `/sites/handbook/source/handbook/about`
- [ ] [https://about.gitlab.com/faq-gitlab-licensing-technology-to-independent-chinese-company](https://about.gitlab.com/faq-gitlab-licensing-technology-to-independent-chinese-company) - `/sites/handbook/source/handbook/faq-gitlab-licensing-technology-to-independent-chinese-company`
- [ ] [https://about.gitlab.com/key-review](https://about.gitlab.com/key-review) - `/sites/handbook/source/handbook/key-review`
- [ ] [https://about.gitlab.com/handbook/group-conversations/](https://about.gitlab.com/handbook/group-conversations/) - `/sites/handbook/source/handbook/group-conversations/`
- [ ] [https://about.gitlab.com/handbook/e-group-weekly/](https://about.gitlab.com/handbook/e-group-weekly/) - `/sites/handbook/source/handbook/e-group-weekly`
- [ ] [https://about.gitlab.com/handbook/environmental-sustainability/](https://about.gitlab.com/handbook/environmental-sustainability/) - `/sites/handbook/source/handbook/environmental-sustainability`
- [x] [https://about.gitlab.com/handbook/content-websites-responsibility/](https://about.gitlab.com/handbook/content-websites-responsibility/) - `/sites/handbook/source/handbook/content-websites-responsibility`
- [ ] [https://about.gitlab.com/handbook/inspired-by-gitlab/](https://about.gitlab.com/handbook/inspired-by-gitlab/) - `/sites/handbook/source/handbook/inspired-by-gitlab/`
- [ ] [https://about.gitlab.com/handbook/about/](https://about.gitlab.com/handbook/about/) - `/sites/handbook/source/handbook/about`
- [ ] [https://about.gitlab.com/handbook/handbook-usage/](https://about.gitlab.com/handbook/handbook-usage/) - `/sites/handbook/source/handbook/handbook-usage`
- [ ] [https://about.gitlab.com/handbook/practical-handbook-edits/](https://about.gitlab.com/handbook/practical-handbook-edits/) - `/sites/handbook/source/handbook/practical-handbook-edits`
- [ ] [https://about.gitlab.com/handbook/using-gitlab-at-gitlab](https://about.gitlab.com/handbook/using-gitlab-at-gitlab) - `/sites/handbook/source/handbook/using-gitlab-at-gitlab`
- [ ] [https://about.gitlab.com/handbook/style-guide](https://about.gitlab.com/handbook/style-guide) - `/sites/handbook/source/handbook/style-guide`

### How will this be done

We hope to do this as a series of small MRs over the course of a week.  Each of these sections is typically only a page or two.  So we shall one small section at a time over the course of 4 days.  Each move is a pair of MRs.  One brings the content over to the new handbook while the other removes the content from `www-gitlab-com` and sets up a redirect to the new content.

If you have any questions about this please feel free to ask in [#handbook](https://gitlab.slack.com/archives/C81PT2ALD) on Slack or reach out directly to @jamiemaynard.

## The break down of whats moving

#### Job Families

*Completion Date:* 31st March 2023

**Content to move:**

- [x] Job Families

#### TeamOps

*Completion Date:* 21st April 2023

**Content to move:**

- [x] TeamOps

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#teamops)

#### Company Handbook Content

***Expected Finish Date:*** 12th May 2023

***Content to move:***

- [x] Values
- [x] Being a public company
- [ ] Communication
- [ ] Handbook
- [ ] Key Reviews
- [ ] Group Conversations
- [ ] E-Group Weekly
- [ ] Sustainability
- [ ] About the handbook
- [x] Content Websites Responsibility
- [x] Style-Guide
- [ ] Inspired By Gitlab
- [ ] Executive Business Administrators

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#company-handbook-content)

#### Tools and Tips

**Expected Date:** 16th May 2023

**Content to move:**

- [x] Tools and Tips

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#tools-and-tips)

#### Infrastructure Standards

**Expected Date:** End of June 2023

**Content to move:**

- [x] Infrastructure Standards

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#infrastructure-standards)

#### IT Self Service

**Expected Date:** End of June 2023

**Content to move:**

- [ ] IT Self Service

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#it-self-service)

#### Company

**Expected Date:** End of July 2023

**Content to move:**

- [ ] Company
- [ ] Company Culture
- [ ] Friends and Family Days
- [ ] GitLab Assembly
- [ ] History
- [ ] KPIs
- [ ] Mission
- [ ] Offsite
- [ ] OKRs
- [ ] Workings Groups

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#company)

#### CEO and CoST Team

**Expected Date:** End of August 2023

**Content to move:**

- [ ] CEO pages
- [ ] CoST Team Pages

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#ceo-and-cost-team)

#### Security

**Expected Date:** End of September 2023

**Content to move:**

- [ ] Organizational Change Management
- [ ] Security

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#security)

#### Finance

**Expected Date:** End of September 2023

**Content to move:**

- [ ] Board Meetings
- [ ] Finance
- [ ] Internal Audit
- [ ] Spending Company Money
- [ ] Stock Options
- [ ] Tax

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#finance)

#### People Group

**Expected Date:** End of October 2023

**Content to move:**

- [ ] Anti-Harassment
- [ ] Entity
- [ ] Hiring
- [ ] Incentives
- [ ] Labor and Employment
- [ ] Leadership
- [ ] Paid Time Off
- [ ] People Group
- [ ] Total Rewards
- [ ] Travel

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#people-group)

#### Marketing

**Expected Date:** End of November 2023

**Content to move:**

- [ ] Marketing
- [ ] Use-Cases

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#marketing)

#### Sales

**Expected Date:** End of December 2023

**Content to move:**

- [ ] Alliances
- [ ] Customer Success
- [ ] Resellers
- [ ] Sales

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#sales)

#### Legal

**Expected Date:** End of January 2024

**Content to move:**

- [ ] DMCA Policy
- [ ] GDPR Policy
- [ ] Legal

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#legal)

#### Engineering

**Expected Date:** End of February 2023

**Content to move:**

- [ ] Developer Onboarding
- [ ] Engineering
- [ ] Support

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#engineering)

#### Product

**Expected Date:** End of March 2023

**Content to move:**

- [ ] Acquisitions
- [ ] Business Technology
- [ ] Product
- [ ] Product Development

A full breakdown of this sections content files can be viewed on our [Migration details page](/handbook/content-websites-responsibility/migration-plan/migration-details/#product)

## Refactor and move data

**Target Date:** End of Q2 2023

### Why move data

The contents of the `www-gitlab-com` data directory is a Source of Truth in its own right.  It is shared by a number of functions of the `www-gitlab-com` repository as well as the `internal-handbook`, `digital-experience` and the new `handbook` .  This represents a significant dependency for all these repositories and the content they drive.

Like the refactor of `www-gitlab-com` refactoring data will allow this dependency to have a single DRI and provide a single place where all repositories which depend on this data to call on.  Data will be benefit from faster pipelines and changes to data can quickly propagated to those repositories that depend on them.

### Status

This is currently in the planning stages and we'll share more as soon as we can.
