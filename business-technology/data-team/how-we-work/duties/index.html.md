---
layout: handbook-page-toc
title: "Data Team Duties"
description: "GitLab Data Team Duties"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---

## <i class="fas fa-users fa-fw color-orange font-awesome" aria-hidden="true"></i>Data Triage

### Triager

The Data team has implemented the following triage schedule to take advantage of native timezones:

| UTC Day   | Data Analyst   | Data Engineer     |
| --------- | -------------- | ----------------- |
| Sunday    | `@ken_aguilar` | -                 |
| Monday    | `@mpeychet`    | `@vedprakash2021` |
| Tuesday   | `@mpeychet`    | `@paul_armstrong` |
| Wednesday | `@iweeks`      | `@m_walker`       |
| Thursday  | `@ken_aguilar` | `@snalamaru`      |
| Friday    | `@jeanpeguero` | `@jjstark`        |

A team member who is off, on vacation, or working on a high priority project is responsible for finding coverage and communicating to the team who is taking over their coverage;
this should be updated on the [Data Team's Google Calendar](https://calendar.google.com/calendar?cid=Z2l0bGFiLmNvbV9kN2RsNDU3ZnJyOHA1OHBuM2s2M2VidW84b0Bncm91cC5jYWxlbmRhci5nb29nbGUuY29t).

Having dedicated triagers on the team helps address the bystander affect. The schedule shares clear daily ownership information but is not an on-call position. Through clear ownership, we create room for everyone else on the team to spend most of the day around deep work. The triager is encouraged to plan their day for the kind of work that can be accomplished successfully with this additional demand on time.

Data triagers are the first responders to requests and problems for the Data team.

- The Data Analyst triager is primarily responsible for responding to GitLab team member Requests whether via issue, which posts to **#data-triage**, or directly via slack in **#data**.
- The Data Engineer triager is primarily responsible for resolving problems with our data platform, which will either be in the **#analytics-pipelines** or **#dbt-runs** slack channels or on the [DE - Triage Errors board](https://gitlab.com/groups/gitlab-data/-/boards/1917859). Issues created from these errors should use the [DE Triage Errors issue template](https://gitlab.com/gitlab-data/analytics/issues/new?issuable_template=DE%20Triage%20Errors).
    - Daily, a link to the DBT Source Freshness dashboard is posted in **#analytics-pipelines**.  This dashboard should be reviewed by the Data Engineer triager.
    - During the assigned triage day the Data Engineer should be primarily focused on active issues or the issues onthe [DE - Triage Errors board](https://gitlab.com/groups/gitlab-data/-/boards/1917859).
- The Data Analyst and Data Engineer triagers are secondarily responsible for platform problems and GitLab team member requests respectively.
- For more information on responsibilities of a triager watch the [Data Engineer triage training session video](https://www.youtube.com/watch?v=0eGpgaQgEGg).

Many issues that come into the data team project from other GitLab team members need additional info and/or context in order to be understood, estimated, and prioritized.
It is the triager's priority to ask those questions and to surface issues sooner, rather than later.

**Note:**
The Data Analyst triager

- is not expected to know the answer to all the questions
- should cc (mention) other team members who are subject matter experts (SME) or [functional DRIs](/handbook/business-technology/data-team/#-team-organization) for their feedback
- should document any issues stumbled upon and help to disseminate knowledge amongst all team members

### How to Complete Data Triage

Create [an issue in the Data Team project](https://gitlab.com/gitlab-data/analytics/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=&issuable_template=Data%20Triage).

[Read](/handbook/business-technology/data-team/how-we-work/triage/) the FAQ and common issues.

### Triage Bot

Parts of triage are assisted by the [GitLab Triage Bot](https://gitlab.com/gitlab-org/gitlab-triage), which is setup in the Analytics project. The bot runs every hour and takes actions based on a set of rules defined in [a policies file](https://gitlab.com/gitlab-data/analytics/-/blob/master/.triage-policies.yml). The [GitLab Triage README](https://gitlab.com/gitlab-org/gitlab-triage#defining-a-policy) contains all documentation for the formatting and definition of rules.

Changes to the triage bot policy file should be tested in the MR by running the "dry-run:triage" CI job and inspecting the log output.  This CI job is a dry-run, meaning it will not actually take any actions in the project but will print out what would happen if the policy was actually executed.

## <i class="fas fa-users fa-fw color-orange font-awesome" aria-hidden="true"></i>Merge Request Roles and Responsibilities

### Reviewer

All GitLab data team members can, and are encouraged to, perform code review on merge requests of colleagues and community contributors.
If you want to review merge requests, you can wait until someone assigns you one, but you are also more than welcome to browse the list of open merge requests and leave any feedback or questions you may have.

Note that while all team members can review all merge requests, the ability to _accept_ merge requests is restricted to maintainers.

The responsibility of a Reviewer is

- to review the technical implementation
- to ensure the code achieves the business goals
- to check the data quality of the data models created

#### Codeowner

Code ownership is a [feature of GitLab](https://gitlab.com/help/user/project/code_owners) that links a project member to specific folders and files in a project. It is meant to answer the questions "who can I ask about this code?" and "who should review changes to this code?".

Becoming a code owner is part of the journey to becoming a project maintainer. If you are the sole creator of a file, say a new dbt model set, you will be the de facto code owner for those files. If you wish to expand your ownership purview, follow these steps:

1. Create an MR to the [CODEOWNERS file](https://gitlab.com/gitlab-data/analytics/blob/master/CODEOWNERS) with the ownership change you wish to make
1. Work with the other code owners that already cover the area you wish to join to pair with them on at least 5 MRs that alter the code you wish to be responsible for
    - The MRs should not reflect only small changes to the code base, but also architectural ones and ones that create a fully functioning addition. It may take more than 5 MRs for this criteria to be reached
    - You will be the primary reviewer for all MR's assigned to the code owner
    - You will review the MR's as if you had the power to merge
    - Once you feel the MR is ready and you would have merged it, assign it to the code owner and comment that you would have merged the MR
    - The code owner will do a follow up review if necessary and either merge the MR or assign it to a maintainer for you
    - Document the MR in the original MR you created
1. Once the 5 MR threshold has been reached, the code owner will work with the applicant's manager to make a decision
1. If denied, close the MR and work with your manager for a period of no less than 3 months before applying again
1. If approved, assign the MR to a maintainer to merge. You will automatically be added to the Code Owner approval list once merged

### Maintainer

A maintainer in any of the data team projects is not synonymous with any job title.
Here, the data team takes from the precedent set forward by the engineering division on [the responsibilities of a maintainer](/handbook/engineering/workflow/code-review/#maintainer).
Every data team project has at least one maintainer, but most have multiple, and some projects (like Analytics) have separate maintainers for dbt and orchestration.

The responsibility of a Maintainer is to ensure that

- Data team processes are followed
- Final review on the MR

#### How to become a data team maintainer

We have guidelines for maintainership, but no concrete rules.
Maintainers should have an advanced understanding of the GitLab Data projects codebases.
Prior to applying for maintainership of a project, a person should gain a good feel for the codebase, expertise in one or more domains, and deep understanding of our coding standards. You're probably ready to become a maintainer when both of these statements feel true:

1. The MRs you've reviewed consistently make it through maintainer review without significant additionally required changes
1. The MRs you've created consistently make it through reviewer and maintainer review without significant required changes

If those subjective requirements are satisfied, this is the process to add yourself as a maintainer:

1. Create an issue in the relevant project with the title "Add <user> as project maintainer"
1. Add documentation to the issue for the following:
    - Explain why you are ready to take on the maintainer responsibility
    - Explain the scope of your maintainership (entire project, dbt, python, etc.)
    - Recent MR's that you have created and reviewed that you believe show your readiness
1. Once the issue is created, tag a maintainer who you'd like to be paired with for a formal review
1. The maintainer will have you pair with them on at least 10 merge requests
    - The MRs should show a diversity of scope, including architectural changes as well as complete, fully functioning feature releases with changes across many files and directories.
    - You will be the primary reviewer for these 10 MRs
    - You will review the MR's as if you had the power to merge
    - Once you feel the MR is ready and you would have merged it, assign it to the maintainer and comment that you would have merged the MR
    - The maintainer will do a follow up review if necessary and merge the MR for you
    - Document the MR in the issue you created
1. Once the 10 MR threshold has been reached, the maintainer will work with the applicant's manager to make a decision
1. If denied, close the issue and work with your manager for a period of no less than 3 months before applying again
1. If approved, create a MR to add the maintainership to your team page entry
1. Assign the MR to your manager and mention the existing maintainers of the relevant project (Infrastructure, Analytics, etc) and area (dbt, Airflow, etc.).
1. If the existing maintainers of the relevant group e.g., dbt, do not have significant objections, and if at least half of them agree that the reviewer is indeed ready, we've got ourselves a new maintainer!
1. An owner of the project will increase your privilege on the project

### Merge Request Workflow

The Data team operates as one team between the Data Analytics team and the Data Engineering team. Therefore, we expect for each MR that there are at least three people involved. See the below scenarios:

1. DA authors, DA reviews, DE Maintainer merges
1. DE authors, DA reviews, Maintainer merges
1. DE authors, DE reviews, Maintainer merges

Since the Data Engineering team is responsible for the Data platform, every MR request should include a Data Engineer.

## <i class="fas fa-users fa-fw color-orange font-awesome" aria-hidden="true"></i>Quarterly Data Health and Security Audit
t.b.d.
