---
layout: handbook-page-toc
title: "Static Analysis Group"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Static Analysis

The Static Analysis group at GitLab is charged with developing solutions which perform [Static Analysis Software Testing (SAST)](/direction/secure/static-analysis/sast/),

[Secret Detection](/direction/secure/static-analysis/secret-detection/), and [Malware Detection](/direction/secure/#malware-scanning) for customer software repositories.

## Common Links

* Slack channel: #g_secure-static-analysis
* Slack alias: @secure_static_analysis_be
* Google groups: static-analysis-be@gitlab.com

## How We Work

The Static Analysis group is largely aligned with GitLab's [Product Development Flow](/handbook/product-development-flow/), however there are some notable differences in 
how we seek to deliver software. The backend engineering team predominantly concerns itself with the delivery of software, which is the portion of the workflow states where 
we deviate the most. What follows is how we manage the handoff from product management to engineering to deliver software.

Issues worked by this team are backend-centric and can span analyzers, vendored templates, and GitLab's Rails monolith. At times, issues can require support from Secure's 
frontend team if UI changes are required. Issues needing frontend support may [require more notice](/handbook/engineering/development/secure/analyzer-frontend#How-to-work-with-us), and 
should be called out as early as possible.

### Issue Boards

* [Static Analysis Delivery Board](https://gitlab.com/groups/gitlab-org/-/boards/1590112?label_name[]=group%3A%3Astatic%20analysis&group_by=epic&label_name[]=backend)
  * Primary board for engineers from which engineers can work. It's stripped down to only include the workflow labels we use when delivering software and utilizes epic-level swimlanes.
* [Static Analysis Planning Board](https://gitlab.com/groups/gitlab-org/-/boards/1229162?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Astatic%20analysis)
  * Milestone-centric board primarily used by product management to gauge work in current and upcoming milestones.
* [Static Analysis EM Board](https://gitlab.com/groups/gitlab-org/-/boards/1655697)
  * Engineer-centric board used by engineering management to gauge how heavy a load engineer is carrying. Judged by the number of issues assigned to them.

#### Issue and Merge Requests labels

GitLab has a labeling convention for issues and Merge Requests. We follow this convention, though there are specific labels required to route artifacts to us. We 
use these labels to filter issues meant for us on our issue boards. They are also used for metrics and KPI reporting.

| Label | Meaning |
| ----- | ------- |
| ~section::sec | Identifies the issue or MR as belonging to the Sec Section's roadmap. |
| ~devops::secure | Identifies the issue or MR as belonging to the Secure Stage's roadmap. |
| ~group::static analysis | Identifies the Static Analysis group as the collection of individuals who will work on the issue or MR. |
| ~Category:SAST | Identifies the issue or MR as being part of the SAST feature category. |
| ~Category:Secret Detection | Identifies the issue or MR as being part of the Secret Detection feature category. |
| ~Category:Code Quality | Identifies the issue or MR as being part of the Code Quality feature category. |
| ~backend | Identifies the issue or MR as being part of GitLab's backend. |

### It all starts with planning

Like the rest of GitLab, we are product-driven and work in response to the priorities identified by Product Management. We use planning issues to articulate the epics which should be our top priorities in each release. This practice means we can interpret epics to be the features we're being asked to deliver and 
are given the freedom to break down those epics according to our best judgment. 

#### How we interact with planning issues

* Engineering Manager will mention engineers in planning issues to declare which epic they will work within.
* Engineering Manager will assign engineer(s) who will be working on issues in the prioritized epics.
* Engineering Manager will pull all issues on the epics prioritized into the `~workflow::planning breakdown` state.
  * This action should make the issues available on **Static Analysis Delivery Board** mentioned above.

### Software delivery in Static Analysis

While we follow GitLab's product development flow, our processes as a backend engineering team most closely resemble kanban. Engineers are empowered to choose issues from the Delivery 
Board in their assigned epic swimlane and pull them through the identified states. In addition to the workflow states identified by the company, we are experimenting with the 
`~workflow::refinement` state. Engineers are expected to use their best judgment as to how issues flow through the board, but the following outcomes are expected at each state.

An issue landing on the delivery board is the means by which work is released to the engineering team for Delivery. This event is the beginning of the process by which the 
engineers will scrutinize an issue's readiness, estimate it size, and implement the changes necessary to achieve the desired outcomes.

| State | Expected Outcomes |
| ----- | ----------------- |
| `~workflow::planning breakdown` | - Issues deemed complete and understood.<br />- Issue split into smallest testable units of value.<br />- We try to split issues vertically rather than horizontally. Splitting vertically means the whole system will do something noticeably different; splitting horizontally results in trying to realize the fullest possible change in an individual component.<br />- If the issue can - and should - be split into separate issues, engineers are empowered to create the new issues, attach them to the epic they are working, and collaborate with product management on if they are included in current scope. |
| `~workflow::refinement` | - Implementation plan<br />- Relative size applied as weight. |
| `~workflow::ready for development` | Buffer queue - issue deemed to be `~Deliverable`, `~Stretch`, or possibly punted to a future iteration. |
| `~workflow::in dev` | Last MR is up and out of Draft or WIP status. |
| `~workflow::in review` | Last MR is merged and changes are available in a production environment. |
| `~workflow::verification` | Changes functionally tested in a production environment. |

#### Weights

Weights are used as a *rough* order of magnitude to help signal to the rest of the team how much work is involved.
Weights should be considered an output of the refinement process rather than its purpose.

The weighting system roughly aligns the scales used by other teams within GitLab. However, we use relative sizing rather than
assigning time estimates to possible values. A curated set of reference issues have been provided below, which will be updated periodically
to keep examples as current as possible.

##### Possible Values

It is perfectly acceptable if items take longer than the initial weight. We do not want to inflate weights,
as [velocity is more important than predictability](/handbook/engineering/#velocity-over-predictability) and weight inflation over-emphasizes predictability.

| Weight | Description | Reference issues |
| ------ | ----------- | ---------------- |
| 1 | Trivial task | [Update Bandit analyzer to v1.6.2](https://gitlab.com/gitlab-org/gitlab/-/issues/12926) |
| 2 | Small task | [Security Dashboard should show dismissal details on issues](https://gitlab.com/gitlab-org/gitlab/-/issues/9715) |
| 3 | Medium task | [Dependency Scanning Fails: "engine 'node' is incompatible with this module"](https://gitlab.com/gitlab-org/gitlab/-/issues/12471), [Dependency List contains duplicates (npm project)](https://gitlab.com/gitlab-org/gitlab/-/issues/12162), [Support setup.py in Dependency Scanning](https://gitlab.com/gitlab-org/gitlab/issues/11244), [Make vulnerability-details receive a vulnerability as a prop](https://gitlab.com/gitlab-org/gitlab/-/issues/14006) |
| 5 | Large task | [Engineering Discovery: reconsider Gemnasium client/server architecture](https://gitlab.com/gitlab-org/gitlab/issues/12930) |
| 8 | Extra-large task | [SAST for Apex](https://gitlab.com/gitlab-org/gitlab/-/issues/10680), [Add License information to the Dependency List - add license info backend](https://gitlab.com/gitlab-org/gitlab/issues/13084), [WAF statistics reporting](https://gitlab.com/gitlab-org/gitlab/-/issues/14707) |
| 13 | Extra-extra-large task | [Add support for REST API scans to DAST](https://gitlab.com/gitlab-org/gitlab/-/issues/10928) |
| Bigger | Epic in disguise |  |

#### How we commit to delivering work in a milestone

In GitLab, the `~Deliverable` label is referred to as a [release scoping label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#release-scoping-labels). Applying this label 
represents a commitment from the engineering team to realize the work required in the issue within the milestone to which the issue is assigned. This means we decide whether we can commit to 
delivering work once an issue is in the `workflow::ready for development` state. 

The decision on when to use the `~Deliverable` label is made through answering the following questions.

- Given the issue's weight, are we reasonably confident there is enough time left in the milestone for the engineer to deliver the issue?
    - We currently assume an engineer in Static Analysis can achieve a velocity of 9 in any one milestone.
- Would the issue be achievable early in the next milestone if work began now?
    - If so, discuss with the Product Manager about the situation. Work can begin if the Product Manager agrees with the proposed timeline and would like to proceed.
    - Please make sure the milestone is updated before continuing with work.
- Is this the smallest, testable unit of work which adds value and cannot be further broken down without adding overhead?

The `~Deliverable` label is applied if the answer to the above questions are yes. The use of this label impacts the group's Say/Do ratio, making the Engineering Manager the directly responsible 
individual for this label. However, engineers in Static Analysis are empowered to use their judgment about applying this label and proceeding if they believe the work is achievable. Please 
have a conversation with the Engineering Manager if uncertain about how to proceed.

#### Code Review Process

The process for reviewing and maintainer code is documented within our [Static Analysis Group Code Review](/handbook/engineering/development/secure/static-analysis/code_review.html) page.

#### Stabilization Period and Slack Time

The collection of issues which make up epics represent a sizable amount of work, which we typically seek to limit to approximately 1.5 milestones in total duration. The size and scope of 
this work can result in previously unseen scope or have unexpected consequences. As a result, we will not immediately kick off work on another epic immediately after completing one. We will 
allow one week of time for tech debt cleanup, feature stabilization, and engineer slack time to explore topics they encountered which are of interest to them.

### Security Vulnerability Process

We are responsible to ensure that what we deliver is secure. This means that we dogfood GitLab's Security
features.

When creating an issue for a vulnerability, please make sure to follow
the [Engineering Security instructions](/handbook/engineering/security/#creating-new-security-issues).

#### SLO by Vulnerability Severity

When triaging `Unknown` vulnerabilities, they should be assigned a proper severity as a means to decide the
priority they should receive to be resolved. The corresponding priority is taken from [Triage levels
Priority](../../../quality/issue-triage/#triage-levels).

| Target                     | Unknown | Critical     | High         | Medium       | Low          |
|----------------------------|:------:|:------------:|:------------:|:------------:|:------------:|
| Dismiss/Confirm Vuln       | 72h    | 72h          | 72h          | 1mo          | 1mo          |
| Confirmed Vuln is Resolved | N/A    | ~priority::1 | ~priority::2 | ~priority::3 | ~priority::4 |

#### Workstream Designation

The following is a description of the type of work and which workstream it flows through.

| Work | Responsible Workstream |
| Triage of new vulns | This should be done as a part of the MR review that introduces the vulns. |
| Triage of existing vulns | This is done by the main maintainer of each of our analyzers as defined in our [Release project's issue template](https://gitlab.com/gitlab-org/security-products/release/-/blob/master/scripts/templates/release_issue.md.erb). |
| Resolution of Critical / High Vulns | These should be a Product-driven priority. |
| Resolution of Medium / Low Vulns | This is done by the main maintainer of each of our analyzers as defined in our [Release project's issue template](https://gitlab.com/gitlab-org/security-products/release/-/blob/master/scripts/templates/release_issue.md.erb). |

As always, contributions are welcome from our community or the current MR coach in rotation.

#### False Positive Dismissal Process

The process for dismissing a vulnerability as a false positive is as follows:

* If it doesn't exist on the [Static Analysis Group Defined False Positives](/handbook/engineering/development/secure/static-analysis/false_positives.html) page, then write documentation describing the type of false positive and why we think it is classified as such.
* If the vulnerability relates to a specific code location (e.g. SAST), then open an MR with comments at each FP location that contain a link to the FP documentation.
* Dismiss vulnerability in the GitLab UI with a comment that contains:
  * A link to the FP documentation.
  * A link to the FP comment MR if it was created.

#### Vulnerability Issue Labels

When creating issues for vulnerability consider adding the following labels besides our normal labels:

- ~security
- ~bug

When there is a doubt about the severity/priority while creating the issue and severity/priority labels are
not added. Then [Appsec Escalation
Engine](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/automation-team/appsec-escalator#appsec-escalation-engine)
could be leveraged to initiate a discussion with the Appsec team.  This bot monitor issues that are labeled
~security and not ~test or ~feature. If severity/priority labels are not present, then labels
security-sp-label-missing and security-triage-appsec will be added and this issue will be mentioned in the
\#sec-appsec Slack channel. Then, the appsec stable counterpart for the group or App sec team triage person
will pick up the issue and assign a severity as part of the appsec triage rotation.

### We Own What We Ship

We are responsible for delivering GitLab's SAST and Secret Detection features, and the analyzers we develop rely heavily upon open source software. 
This means we can be dramatically affected by changes in those software packages. We will check for updates to these packages once per [GitLab 
release](https://about.gitlab.com/releases/). New versions will be scrutinized for the following aspects:

* Breaking changes
* New, updated, or removed security rules
* Behavior changes
* Analyzer changes needed to use the new version
* Security vulnerabilities

An issue will be created and prioritized if a breaking change is discovered. Otherwise, dependency updates will be detailed in the relevant 
analyzer's changelog and a new version will be released utilizing the change. This is a lot of work, most likely requiring several hours of 
focused study to understand what is happening in the new version. As a result, dependency updates will be divided evenly and assigned to 
Senior and Intermediate Backend Engineers, with the remainder going to the group's Staff Backend Engineer. Assignments will be managed 
through our [Release project's issue template](https://gitlab.com/gitlab-org/security-products/release/-/blob/master/scripts/templates/release_issue.md.erb).

The assigned backend engineer is the group's primary liaison with the dependency's open source community. Engineers are expected to contribute 
back to those projects, especially if critical or high security findings are confirmed.

#### Testing for security vulnerabilities

We have a [dependencies group](https://gitlab.com/gitlab-org/security-products/dependencies) which contains mirrored copies of the OSS projects upon which we most rely. Prior to submitting an MR updating an analyzer to a new version of these projects, engineers are expected to do the following:

1. Find a release branch which matches the new version we wish to ship.
  * If one doesn't exist, create it from the corresponding tag.
1. Push the branch through a pipeline which executes all of our security products.
  * Please note, some of these projects have complicated builds. Auto-Devops works sometimes, but projects such as [spotbugs](https://gitlab.com/gitlab-org/security-products/dependencies/spotbugs) can require a custom CI configuration for our scans to be successful. Also, these projects include tests that can be noisy if not filtered out.
1. Evaluate any potential security vulnerabilities which are found. 
  * Work with the relevant Open Source community to resolve any Critical or High severity findings.
  * GitLab has published [Secure Coding Guidelines](https://docs.gitlab.com/ee/development/secure_coding_guidelines.html), which may be a useful resource to use when trying to solve identified risks.

We do not want to ship updated dependencies which have Critical and High severity vulnerabilities in them. If we find ourselves in this situation, we will 
withhold updates to the dependency until the problems have been patched.

#### Go security fixes

At times we will need to update our analyzers because of security updates to golang itself. In this situation, we follow the [established release process](https://about.gitlab.com/handbook/engineering/development/secure/release_process.html#security-fixes-of-go).

### Unplanned work

In general, the Static Analysis group has two sources of unplanned work: community contributions and ~severity::1 bugs. We will reserve capacity each 
release so we can respond quickly and efficiently. In both scenarios, we will route community contributions to the [engineer who "owns" the analyzer](#we-own-what-we-ship). 

We do, however, own and contribute to projects beyond the analyzers shipped as part of GitLab's product. Where possible, unplanned work requiring 
the attention of an engineer in Static Analysis will be routed according to that project's `CODEOWNERS` file. Otherwise, unplanned work will be 
considered and handled on a case-by-base basis.

### Product Prioritization Labels

We also use additional labels to categorize different types of requests. These labels represent the top areas of product impact we are currently focused on within the Static Analysis team.

[Issue board](https://gitlab.com/gitlab-org/gitlab/-/boards/1578273?label_name[]=group%3A%3Astatic%20analysis).

#### `~SAST: Common Need`

Features we expect everyone to need and use

*Goal:* How do we protect from the most common security issues

*Measure:* Opportunity for impact

##### Types of issues

* Scanner updates
* Language coverage
* OWASP Top 10
* Better Vunl Metadata
* Documentation

#### `~SAST: Advanced Config`

Features we don’t expect everyone to use

*Goal:* Enable customization in configuration and enable advanced capabilities advanced users

*Measure:* Power and flexibility

##### Types of issues

* Customize rulesets
* Monorepo support
* Security scan customization

#### `~SAST: Enforce & Control`

Use least disruptive settings by default and allow customizations

*Goal:* Provide robust policies and controls to enforce security compliance

*Measure:* Policy & Compliance

##### Types of issues

* New scanners
* Policy ideas
* Compliance features

#### `~SAST: Workflow`

*Goal:* Enable workflows to ensure the appropriate attention on issues and allowing them to be tracked overtime.

*Measure:* Trust Scanner Issues & Track over time

##### Types of issues

* Speedy Scanners
* Usage ping data

#### `~SAST: Integrate`

Strongly defined integration harness to make internal/external integrations easier and more conformant

*Goal:* Provide defined integration point, enabling easier integrations

*Measure:* Be an ecosystem player

##### Types of issues

* Integration related ideas
