---
layout: handbook-page-toc
title: "IT Engineering Automation Philosophy"
description: "This handbook page provides information about the IT Engineering automation philosophy."
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Automation Philosophy

As any company or team evolves and scales, it is important to automate and streamline processes. Most tech companies improve automation and processes using some form of scripting.

At GitLab, each of our departments solves their automation problems independently (organic evolution of our values and solving your own niche problems).

### Lessons Learned with Custom Applications

When we started investing in automation for GitLab IT, we set out to solve the meta level problem of access request, approval, and audit automation across our hundreds of tech stack applications. We started building a custom application ([GitLab Access Manager](https://docs.google.com/presentation/d/1j54otOxYwng33WA2UKbRaGoyE5bw9cAv3Jm02l4XFMM/edit#slide=id.g123a13deda8_0_405)) that had a 12 month horizon timeline for v1.0 to support our core SaaS applications, with phased iterations over 36 months to support the *hundreds* of other tech stack apps.

We invested a lot of effort with database architecture, business process workflows, UI design, with strong reporting for audit and compliance. This also required a lot of stakeholder collaboration. 

After 12 months, we decided to cancel the project after performing a second build-vs-buy analysis, and realizing the total cost of ownership of building and maintaining an internal product was just too high and wasn't delivering the business value we needed efficiently.

We learned a lot of valuable lessons in the process, and it has allowed us to rediscover how to think different about automation.

There isn't anything fundamentally wrong with building a custom application, however the scope of the problems we were trying to solve was too big. If we can solve automation for one vendor at a time, we can align better with our values of iteration and efficiency.

Before we started working on GitLab Access Manager, we built several smaller applications that provided a UI for automating access requests for a few systems:
- [GitLab Demo Cloud](https://about.gitlab.com/handbook/customer-success/demo-systems/) - Automate access requests for Sales Demo Systems and Training Hands-On Labs for customers
- [HackyStack](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/) - Automate access requests for AWS and GCP

These applications are relatively simple with a manageable scope for one person part time and are easy to maintain. The cost of ownership for these smaller niche applications is low and delivers a lot of business value, and the simplicity has allowed for rapid adoption without a lot of headaches.

It's important to keep in mind that automation development requires a different approach than product development. **You are your own customer and support team, so you don't need to over-engineer it for use cases that you don't have.**

### Latest Philosophy Iteration

Our philosophy has evolved from a master planned automation custom application (ex. GitLab Access Manager) to focus on using the fastest time to value and the "good enough" level of automation needed. 

We are building custom niche applications where it's needed (ex. HackyStack), however the default answer should be building automation scripts in isolation using existing platforms and tools that provide the 80% of framework and allow us to focus on the last 20% that delivers the business value. Our business problem is solved using that last 20%, so that's where our engineers should spend their time.

We have found that there are very few companies that offer turnkey products or solutions for automation, since every business and workflow is different. Many products and solutions can get you close to the 80% mark with "good enough" efficiency, however we strive to solve for the last 20% with custom solutions to meet our needs. 

As an open source company, we strongly adhere to the principle that any vendor we use must have a comprehensive and easy-to-use REST API, and is focused on a community built ecosystem of integrations instead of a proprietary framework that requires Professional Services custom development.  

We have learned through bitter experience that it is idealistic to build a monolithic custom application from the ground up that does everything and is master planned, however it takes a long time and has a high total cost of ownership (let's assume at least 2 engineers over 2 years). 

It doesn't need to be big and shiny to be effective. We focus on KISS (keep it super simple) and doing the minimum viable change (iteration) to be effective. We can iterate as needed later. You can see the MR history for [laravel-it-ops-cli-scripts](https://gitlab.com/gitlab-com/business-technology/engineering/tools/it-ops-laravel-cli-scripts/-/merge_requests?scope=all&state=merged) for an example of this.

### Scoping Solutions

We use a sniff test rule of 1 week. If we can't solve a problem in less than a week, we're not thinking about the problem the right way or need to break it into multiple problems. If we can automate it in less than a day, we just do it and don't overthink it.

If you distill most problems down to the solution, it's usually one or more API calls and data array manipulation or export that you need to script. There are exceptions, however this solves most of our automation problems.

It shouldn't take more than a few hours to understand the scope of the problem and design the automation. 

> Design, build, test, security review, deploy, debug, feedback, move on

Here is a framework of questions we ask for most problems:
1. What API call(s) do we need to make? Let's look at the API docs and see which endpoints and arguments we need, and ensure we can access the data sources we need to populate those arguments.
2. What manipulation do we need to do with the JSON data array? Are we removing any fields, finding unique values, sorting by a key?
3. What format does the data need to be converted into? Is this is a dual API call and we're doing middleware transformation? Does a spreadsheet need to be updated? Are we sending this into a SQL database?
4. What system are we pushing this to? 
5. What recurring schedule do we need to implement? Which platform is best to host this on?
6. Based on the answers above, what level of automation is this (to help us identify the DRI and tools to use)

## Automation Levels

We have invented automation levels (or tiers) that help us categorize, scope, and understand the complexity of automation at a glance. In it's simplest form, the automation level helps us determine the percentage of automation that meets our business needs (70%, 80%, 90%, 100%), which tools we typically use, and which team member roles that are the DRI for solving the automation problem.

### Tier 1

> - **DRI:** Analyst, Manager, Director
> - **Percentage:** 70% Vendor + 0% Automation = 70%

Level 1 automation is our baseline of using vendor tech stack apps with no custom automation, and only using features in the Web UI or other standard tools to meet business needs as simply as possible. This is not designed to solve an automation problem, but rather have a baseline for problems that we are fine with solving manually using boring solutions without custom automation.

**Tools:**
- Vendor Tool Reports
- CSV Exports
- Google Sheets
- Google Forms
- SiSense (implemented by data team)

### Level 2

- **DRI:** Analyst or Systems Engineer
- **Percentage:** 70% Vendor + 10% Automation = 80%

Level 2 automation focuses on solving ad-hoc workflow problems and gaps needed to improve back office operations and repetitive tasks using no-code tools. This may be for a single system or creating a simple workflow that uses API endpoints from two different systems and conditional logic statements. All level 2 automation is transactional in nature and does not have any database or storage requirements.

**Tools:**
- Workato 
- Okta Workflows
- Tines
- Slack Bots and Webhooks

### Level 3

> - **DRI:** Senior Systems Engineer
> - **Percentage:** 70% Vendor + 20% Automation = 90%

Level 3 automation focuses on providing a "last mile" solution for any given tool/vendor without reinventing the wheel. Many use cases are part of a larger collection or library of automations, so we usually contribute to a common framework. Most of our automations today are contributed as a new or updated CLI command in the IT Ops CLI Scripts repository.

**Tools:**
- IT Ops CLI Scripts
- Terraform
- GitLab CI/CD

### Level 4

> - **DRI:** Senior/Staff Systems Engineer(s)
> - **Percentage:** Multiple 70% Vendors + Multiple Automations = 95 to 100%

Level 4 automation focuses on the meta-level problems that are too big of a scope for Level 3. In many cases, Level 4 automation is an aggregate of smaller Level 3 automations that need to integrate together instead of being built in isolation. 

**Tools:**
- IT Ops CLI Scripts
- Terraform
- GitLab CI/CD

### Level 5

> - **DRI:** Case-by-case
> - **Percentage:** Custom application from 0% to 100% with iterative product roadmap

Level 5 automation addresses problems that are not solved by vendors and require a custom web application in Laravel or Ruby on Rails.

## Platforms and Tools

All of our automation is achieved using one of the following solutions (in preferred order): 
1. [ARCHIE](#archie)
2. [Laravel IT Ops CLI Scripts](#cli-scripts)
3. [No code platforms](#no-code-platforms) (ex. Okta Workflows, Tines, Workato, Zapier)
4. [Configuration and state management](#configuration-and-state-management) tools (ex. Ansible, Terraform)
5. [Custom web applications](#custom-web-applications) (ex. Laravel PHP, Python, Ruby on Rails, etc.) for micro-sized monoliths (less than ~10 pages) that require a user experience.
6. Shell scripts (run locally, using cron jobs, or CI/CD). We rarely create scripts since identical functionality can usually be added to [it-ops-laravel-cli-scripts](https://gitlab.com/gitlab-com/business-technology/engineering/tools/it-ops-laravel-cli-scripts).

In GitLab IT, we believe there is a time and a place for each solution. It can also be powerful when multiple solutions can work side by side. 

We recognize that not every team member has the skills to contribute to source code, so some tools are chosen based on the ease of operation. That doesn't mean that the "interface" and "execution" of your automation needs to use the same tool, and you can treat automation like a frontend and backend application to allow users in the frontend to trigger backend automation.

### Archie

See the [Archie](#) handbook page to learn more about our Access Request Configuration Hyperautomation Identity Engine, the lovable robot that runs scripts to help IT provision users and groups.

### CLI Scripts
 
 [it-ops-laravel-cli-scripts](https://gitlab.com/gitlab-com/business-technology/engineering/tools/it-ops-laravel-cli-scripts) - Laravel application without a database and only an `.env` file with API secrets that provides a command line interface and a library of scripts we have iteratively added over time. This application allows us to build a script in 30 minutes to 3 hours depending on the complexity. This uses Laravel's Artisan Console for Terminal inputs and outputs, make API calls with HTTP client or our custom built SDK clients (with vendor-specific pagination and array format manipulation), manipulate the data with Collections, render the data in the Terminal, save to disk as JSON or Markdown, commit files to GitLab repository, make other API calls to GitLab (ex. trigger a pipeline after commit), and make API call to another vendor to send updated data. This only took a few hours to get started, and we have found this invaluable to iterate over time. Each IT team member has this running on their local machine, and we have it running in GitLab CI/CD to perform specific CLI commands on a pipeline schedule.

### No Code Platforms

We use Workato and Okta Workflows to allow our system administrators to create no-code automations for ad-hoc use cases.

### Configuration and State Management

We use Terraform for most infrastructure-as-code needs with supplemental support with Ansible playbooks and Kubernetes helm charts.

We have an increasing amount of custom state management with Archie and Clipie that will be available throughout 2023.

### Custom Web Applications

We evaluate custom web applications on a case-by-case basis and strongly avoid them due to the high cost of ownership for our small team. We are more likely to solve the business case with a simpler solution using a lower level of automation.

## Automation Roadmap

See our [IT Engineering Development Direction](#) handbook page to learn more about our current projects and automations.