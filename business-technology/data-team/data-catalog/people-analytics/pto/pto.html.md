---
layout: handbook-page-toc
title: "PTO by Roots"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

---

## <i class="far fa-clock-lg" id="biz-tech-icons"></i>PTO by Roots (Slack)


## Goal
GitLab team members use slack to log time off. Tying this data to other data sources can be really helpful in helping us to understand:

- What % of our team members have not taken time off
- Help plan for Family &amp; Friends Day
- Better understand upcoming capacity to plan milestones and OKRs
- Measure impact on performance metrics

As a more specific example, we use PTO data to help understand fluctuations in the [Development Department Narrow MR Rate](https://app.periscopedata.com/app/gitlab/686954/Development-Department-MR-Rate), an indicator of how productive our team members are. We encourage our team members to take the time off to recharge, and by considering time off we are able to explain perceived drops or increases in MR rate over time. For example, an increase in time off from the previous month may explain a drop in the narrow MR rate this month.

Please do not use this data to evaluate the specific amount of time or reason why individual team members are absent. Instead, if you have any concerns about an individual's attendance, you should notify your People Business Partner.

## Data Process
The data we capture:
- At the data level, we care about the day that was taken off, not about why. Hence, in our data we remove all reasons for time off in the extract layer or what is available in snowflake.
- The data is then aggregated up to be used for the various data solutions. For example, for MR Rate we show the KPI at a month, division, department level. The time off and the team members information is not made it accessible in Sisense.
<p>&nbsp;</p>
<p>&nbsp;</p>
<div style="width: 640px; height: 480px; margin: 12px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embeddedchart/c5b93f0e-50ca-4662-8ddd-701e1647a0b6" id="LdDNeR2fLuTT"></iframe></div>
<div style="width: 640px; height: 480px; margin: 12px; position: relative;">&nbsp;</div>

Access to this time off data is limited to data team (Parul Luthra, Data Engineer- to be determined). If you are looking to get access, an access request form must be submitted and approved by the Slack PTO admin, and the Senior Director, People Success.

