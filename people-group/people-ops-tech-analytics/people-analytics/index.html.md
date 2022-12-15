---
layout: handbook-page-toc
title: "People Analytics"
description: "GitLab People Analytics Team Handbook Page"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

----
## Welcome to the People Analytics Team Handbook

This handbook page is meant to cover who we are and why we exist at GitLab. On this page you will find some resources and documentation about the way we work. This document will change as often as our methods and work does and contributions are welcome!

## People Analytics Team Members

* [Adrian Perez](/company/team/#aperez349): [Sr. Manager, People Analytics](/job-families/people-group/people-systems-and-analytics/#senior-manager-people-analytics)
* [Shane McCormack](/company/team/#mccormack514): [Sr. Analyst, People Analytics](/job-families/people-group/people-systems-and-analytics/#senior-analyst-people-analytics)

## What is People Analytics?

The study of people at work! Human Resource departments (the [People Group](/handbook/people-group/) here at GitLab) everywhere are flipping their approach to organizational behavior. Instead of only using experience, opinions, or intuition to make decisions they are leveraging the power of data for decision making processes.

According to [AIHR](https://www.aihr.com/blog/people-analytics/) (Academy to Innovate HR):

> People analytics is the practice of collecting and applying organizational, people, and talent data to improve critical business outcomes. It enables HR departments to develop data-driven insights to make decisions on talent, workforce processes and turn them into actionable insights to improve performance of an organization. 

## The Benefits

There are many benefits to practicing People Analytics within organizations. While not exhaustive, below is a list of _just some_ of those benefits to us here at GitLab.

- Build a more streamlined talent acquisition process that helps GitLab build a strong and diverse team, as well as provides candidates going through the process a well-crafted experience.
- Drive teams to constantly be improving the experience of GitLab team members. We want individuals to thrive in their careers here and by using engagement surveys and KPIs to drive our team goals, we put people at the forefront.
- Tie in the other data! Whether it be sales data, engineering data, etc., connecting the dots between performance and outcomes is very beneficial for the overall health of the organization. We want to understand how we can help team members grow in their journey and help leaders understand the impact of their work.

## People Analytics Team

The People Analytics team at GitLab is part of the [People Operations, Technology & Analytics team](https://about.gitlab.com/handbook/people-group/people-ops-tech-analytics/). It is responsible for working with stakeholders to develop and report various People Metrics and KPIs for the business. The mission of the People Analytics team is to provide insights and learnnings from data to help inform People decisions being made at all levels of the organization.

### Main objectives of the People Analytics Team

1. **Reporting Solutions** 
    - Work with stakeholders to develop automated reporting solutions used to gather relevant and reliable People metrics as quickly as possible.
    - Stakeholders include People Business Partners, Talent Acquisition, Divisional Leadership, etc.
1. **Data Solutions**
    - Work with the [Data Team](/handbook/business-technology/data-team/) to ensure scalable data models are being built to support the various reporting and analytic solutions to be provided to the business. 
1. **Analytical Solutions**
    - Using various statistical techniques (e.g. cluster analysis, linear & logistic regression, survival analysis) to drive insights for the business so that data informed decisions can be made by the People Group and others at GitLab.

### Tools used by the People Analytics Team

It is not necessary to have a large suite of tools in order to be an effective People Analytics team. Many organizations can get started by using Google Sheets or a similar tool. Here at GitLab, we use whatever is best to get information to our stakeholders. Below are the tools we use and how we use them here at GitLab.

1. **Tableau** - Tableau is currently being used to build prototypes of new dashboards and to conduct ad-hoc analysis. This is a very robust tool and provides a great opportunity for self-service exploration of data by our stakeholders.
1. **Sisense** - This is our main reporting tool here at GitLab. This is used as our Single Source of Truth (SSOT) for metric reporting. This is available to all Team Members for exploration and to get information they need quickly. 
1. **RStudio/R** - We use R for our statistical modeling and analysis. It is also used to cleaning data for report building.
1. **Snowflake** - Snowflake is where we house our data and it has a SQL editor to allow for data exploration in the tool itself. 

## Generic Rules and Guidance

- The People Group should be able to do their daily work within the operational software (Workday, Greenhouse, etc.).
- People data in the warehouse should be for reporting general People information “up and out” in the organization.
- Always know the roles and users that have access to the data from “cradle to grave” to understand the risk.
- Only what is needed for reporting should be brought into the data warehouse and leave other potentially sensitive data in the operational tools.
- Anonymize sensitive data that is used in metric calculations and reporting to reduce risk whenever possible.
- Please submit requests and ideas using the issue templates in the [People Analytics project](https://gitlab.com/gitlab-com/people-group/people-operations/people-analytics2/).

## People Data Sources

### Workday
HR management system.
### Greenhouse
Recruiting and Applicant Management System
### PTO By Roots
A slack application that captures team member time off
### CultureAmp
The application we use to conduct surveys within GitLab.


## General People Analytics Resources

- [Wharton People Analytics](https://analytics.wharton.upenn.edu/programs/wharton-people-analytics/) - Wharton hosts an annual People Analytics Conference and dedicates a lot of effort to research in this space.
- [AIHR](https://www.aihr.com/blog/people-analytics-resource-library/) - AIHR is generally a good resource for HR and they have resources specific to People Analytics as well.
- [HR Predictive Analytics](https://www.koganpage.com/product/predictive-hr-analytics-9780749484446) - A textbook that walks through People Analytics concepts and specific examples (with code!).
- [re:Work](https://rework.withgoogle.com/subjects/people-analytics/) - While not updated in some time, this is a great introductory resource created by Google to help teams get started with People Analytics.
