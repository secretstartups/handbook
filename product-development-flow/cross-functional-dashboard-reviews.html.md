---
layout: handbook-page-toc
title: Cross-Functional Dashboard Reviews
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Objective

As part of the cross-functional prioritization framework, a primary goal is to keep undefined MRs under 5% of all MRs merged for a given calendar month. Another primary goal is to ensure the team is aligning as appropriate with the MR type % goals by having a regular review cadence at all levels within Development.

These reviews will use cross-functional dashboards embedded on each team's handbook page that serve as the SSOT when reviewing `type` labels of merged MRs.

## Review Cadence

The cadence and attendees for reviews varies at each level.

Note that the review collaboration can be done in a way that's most effective for the team, either synchronously (e.g. scheduled recurring call) or asynchronously (e.g. issues), as long as the previous reviews are well documented (with historical tracking).

### Monthly Review within a Stage Group

- DRI: Engineering Manager to facilitate the review
- Task: Review the Cross-functional dashboards on the team's handbook page

**Who participates?**
- Quad leadership
  - Engineering Manager
  - Product Manager
  - UX Designer
  - Software Engineer in Test (if applicable)

**Questions to answer**
1. Are the undefined MR types over or under 5%? (If over 5%, what improvements can be made? - e.g. ensuring both issues and MRs are adequately tracked with a `type` label, or leveraging the `/copy_metdata` command on merged MRs.)
1. Did we meet our predefined ratio goals (e.g. 60% features / 30% maintenance / 10% bugs)?
1. Is our current ratio % working well for our team and is the quad aligned on these %s? (If the quad wishes to adjust these, create a handbook MR on your team page to discuss and ensure they're visible to the rest of the team.)
1. Was it accurate in the past month? Why or why not?  (If not, what improvements can be made?)

### Quarterly Review within a Sub-department

- DRI: Direct reports of the VP of Development to facilitate the reviews
- Task: Review the Cross-functional dashboards on the subdepartment's handbook page

**Who participates?**
- Quad leadership
  - Senior Engineering Managers, Director of Engineering
  - Group Product Managers, Director of Product Management
  - UX Design Manager
  - Quality Engineering Manager

**Questions to answer**
1. Are the undefined MR types over or under 5%? If over, which teams are impacting the subdepartment average?
1. Review the goals of type %s for each team. How accurate were they? What were the trends in the past quarter? (Mini retro: What went well and what could be improved?)
1. Is the current ratio % working well for our subdepartment? Do any adjustments need to be made?

### Quarterly Company-wide review

- DRI: VP of Development to facilitate the review
- Task: Review the [Cross-functional dashboards for Development](https://app.periscopedata.com/app/gitlab/1008238/Next-Prioritization---VP-of-Development)

**Who participates?**
- CTO
- VP of PM
- VP of UX
- VP of Quality 
- VP of Development

**Questions to answer**
1. Are the undefined MR types over or under 5%? For the teams that are over 5%, what action items are being taken to address these?
1. VP of Development: Review the type % goals for the company overall and look at trends. Are there are outliers that are skewing the metrics?
1. CTO and VP of PM: Review the type % goals and discuss their accuracy and trends. What went well and what improvements should be made?
1. CTO and VP of PM: Is the current ratio % working well for the Development department? Do any adjustments need to be made?
