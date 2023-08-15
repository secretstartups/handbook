---
layout: handbook-page-toc
title: "Red Team"
description: "GitLab's internal Red Team extends the objectives of penetration testing by examining the security posture of the organization and their ability to implement effective cyber defenses."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Red Team Overview

GitLab's internal Red Team conducts security exercises that emulate real-world threats. We do this to help assess and improve the effectiveness of the people, processes, and technologies used to keep our organization secure.

The Red Team does not perform penetration tests, and the work we do is not focused on delivering a list of vulnerabilities in a specific application or service.

Malicious actors are not constrained by the narrow focus of traditional security testing. We must take on this adversarial mindset in order to challenge our own assumptions and identify areas for improvement across our entire organization. We do this by emulating the real-world tactics, techniques, and procedures (TTPs) of threats that are most relevant to our environment.

This approach allows groups across GitLab to practice detecting and responding to threats in a controlled manner. We can then better understand our current defensive capabilities and work to improve them before we are faced with the real thing.

The Red Team operates under a predefined set of [rules of engagement](./red-team-roe.html). The rules of engagement exist to inform GitLab's team members on how the team operates during engagements. It provides guidelines for determining scope, the ethics we employ during our engagements, how we collaborate as a security team, and how we escalate vulnerabilities and exploits we discover during those engagements.

Further details can be found in the [job family description](https://handbook.gitlab.com/job-families/security/red-team/).

## What the Red Team Does

### Purple Team Operations

We use the term "*Purple Team*" to describe an open collaboration between our defensive security folks (aka our "Blue Team") and our offensive security folks (aka our "Red Team"). Red + Blue = Purple. When the Purple Team performs an operation, the work is visible to all GitLab team members. This includes building adversary profiles, discussing hypothetical attack and defense scenarios, and emulating attack techniques in our environment.

You can read more about this process in [Purple Teaming at GitLab](purple-teaming/), and you can contribute, comment, view, or interact with us on Slack in the `#purple-team-ops` channel where we discuss ongoing purple-team operations.

Building efficient and understandable processes for our operations that work for us and the teams we collaborate with is important.  However, given the need, we will prioritize collaboration with our peers over the processes and tools we have in place.  We feel this allows us to best suit the needs of the teams we work with and the organization as a whole.

### Stealth Operations

Other operations may be less visible, with only certain team members aware of the details. These operations provide the most realistic opportunity for GitLab to practice responding to real world attacks. To avoid ambiguity, we will refer to these as "Stealth Operations".

Stealth operations are not a contest. If our Red Team completes an objective undetected, we can offer recommendations to improve our detections. If we trigger a response, we've validated that detection capability in a realistic scenario and allowed the team to work through the same processes they would use when responding to real-life attacks. Both of these scenarios provide valuable feedback to the organization.

These operations require [special rules](./red-team-roe.html#stealth-operations) to stay safe and productive. Examples of techniques we may use and those we will specifically avoid can be found in [Stealth Operation Techniques](./red-team-roe.html#stealth-operation-techniques).

### Open Scope Work

Some activities are considered open-scope, meaning that they can be conducted at any time, from any source IP address, and against any GitLab-managed asset without prior approval or notification. The output may or may not be included in the reporting for planned operations, depending on the results and whether or not it is helpful to the Blue Team.

You can see a list of these activities in our [Rules of Engagement here](./red-team-roe.html#open-scope-techniques).

If these activities are detected by SecOps, they should be treated as potentially malicious and acted upon appropriately. Unless part of a planned operation, there should never be an assumption that suspicious behaviour is a Red Team activity.

When vulnerabilities are manually discovered during open-scope work, an issue will be opened inside the [Red Team Operations issue tracker](https://gitlab.com/gitlab-com/gl-security/threatmanagement/redteam/redteam-internal/red-team-operations/-/issues) using the "Open Scope Finding" template. If immediate action is required, we will [contact SIRT](https://about.gitlab.com/handbook/security/#-contacting-the-team) and reference the issue. For vulnerabilities that appear wide-spread or recurring, we will create an issue inside the [Vulnerability Management issue tracker](https://gitlab.com/gitlab-com/gl-security/threatmanagement/vulnerability-management/vulnerability-management-internal/vulnerability-management-tracker/-/issues) to implement automated scanning capabilities.

## Red Team Logistics

### Red Team Operation Workflow

We maintain [public issue templates](https://gitlab.com/gitlab-com/gl-security/threatmanagement/redteam/redteam-public/red-team-issue-templates) for planning, executing, and reporting on Red Team operations. At the start of an operation, we open a new epic and use these templates to create issues corresponding to each stage of work.

By using these templates, everyone on the team knows where we are at and what comes next. This helps us to operate asynchornously and to iterate on our processes based on how well the templates work.

### Red Team Report Delivery

All operations end with a final report. We use an issue template which is [shared publicly here](https://gitlab.com/gitlab-com/gl-security/threatmanagement/redteam/redteam-public/red-team-issue-templates).

Security risks affect everyone, and it is essential to make our reports approachable and consumable to a broad audience. To achieve this, we make an effort to [use simple language](/handbook/communication/#simple-language). Our goal is to ensure that anyone in the company can understand the reports, even if they don't have a background in security.

After an operation has concluded, we will create a short video summarizing the operation, which should not exceed five minutes. We will then share the following in `#whats-happening-at-gitlab` and cross-post it in `#security`:

- A very short summary of the operation, including the video overview
- A link to the final report
- A link to the retrospective issue to solicit questions and feedback
- A disclaimer to keep the information [SAFE](/handbook/legal/safe-framework/#how-do-we-reinforce-safe).
- A tagged list of individual operation participants as well as the Security Incident Response Team (SIRT) as a whole for awareness since not all team members participate in an operation each time.

By doing this, we help foster a culture of security awareness throughout the organization and ensure that everyone can benefit from our work.

### Red Team Metrics

#### Recommendations

 We are currently tracking the recommendations we provide across the organization and breaking them into the following three categories:

- Detections & Alerts (using the label `RTRec::Detection`)
- Security Controls (using the label `RTRec::Control`)
- Processes and Procedures (using the label `RTRec::Process`)

This is done by opening individual issues for each recommendation generated during an operation or open-scope activity and tagging those issues with specific labels. We can then look back and see the time and effort put into each category and how the recommendations were received and acted upon.

The following issue boards provide a consolidated view of these recommendations. Most issues will be confidential and visible only to GitLab team members:

- [Red Team Recommendations: gitlab-org](https://gitlab.com/groups/gitlab-org/-/boards/5351140)
- [Red Team Recommendations: gitlab-com](https://gitlab.com/groups/gitlab-com/-/boards/5350979)

We will not measure our team's performance based on simply counting the number of recommendations over a specific time period. Instead, we will try to understand how the recommendations ultimately impact the organization and what we can do to become a more effective Red Team.

#### MITRE ATT&CK Heatmap Coverage

We use MITRE's "[ATT&CK Navigator](https://github.com/mitre-attack/attack-navigator)" to generate heatmaps of each completed operation. This is done automatically using CI pipelines and GitLab Pages to host the output. Each operation will have an individual heatmap, and a single combined heatmap will be generated that overlays all previous operations.

This is great way to visualize the types of attack techniques we've emulated, and to help us understand areas we should focus on in future operations.

GitLab team members can [access the application](https://red-team-dashboard-gitlab-com-gl-security-threat-6d74b7b3ac5937.gitlab.io/) as well as [the project that builds it](https://gitlab.com/gitlab-com/gl-security/threatmanagement/redteam/redteam-internal/automation/ci-attack-navigator).

#### Red Team Maturity Model

We use a custom maturity model to measure our progress and help guide our decisions. This is losely based on the [Capabilities Maturity Model (CMM)](https://en.wikipedia.org/wiki/Capability_Maturity_Model). Our model contains five stages of maturity, each with very specific behaviors we strive to demonstrate and states we hope to achieve.

We built this using a GitLab issue board, with each maturity level being a list and each item being an issue. We can collaborate inside the issues, discussing our progress and providing links to related issues and merge requests. As we work on specific items, we will add custom labels to indicate an item is in progress, established, or replaced by an item in a latter maturity level.

GitLab team members can view the model [here](https://gitlab.com/gitlab-com/gl-security/threatmanagement/redteam/redteam-internal/red-team-maturity-model).

### Red Team Technique Handover

The Red Team will develop new adversary emulation techniques on a regular basis, both during official operations as well as informal [open-scope](#open-scope-work) activities. For example, the Red Team may create a bot that logs into development instances and attempts to exploit a specific configuration. Once the risk has been proven and existing detection/response capabilities have been tested, it is time for the technique to be fully disclosed internally.

While this may result in product fixes or infrastructure changes, it is possible that vulnerable configurations may reappear in the environment. At this point, GitLab's [Vulnerability Management](https://about.gitlab.com/handbook/security/threat-management/vulnerability-management/) group will take over any ongoing scanning required to monitor for this scenario. The Red Team will share any tools they used for the initial discovery, but Vulnerability Management will generally implement a more production-ready permanent scanning solution.

### Red Team Tooling Development

The Red Team writes a lot of code, most of which will not be used in production environments. We want to prioritize simplicity and usability when writing it. This means writing code that is easy to understand and maintain, rather than worrying about optimization or unnecessary advanced functionality.

We will generally use Python because it is widely adopted in the security industry and has a large selection of libraries that can help us quickly develop tools.

When we need to create a single portable application, such as emulated malware, we will use Go.

Other factors may influence the decision on which language to use, such as forking an existing project or a requirement to emulate a specific attack scenario.

To help ensure consistency, we have created a [project template](https://gitlab.com/gitlab-com/gl-security/threatmanagement/redteam/redteam-internal/templates/red-team-tooling-template) available internally. This template includes a standard set best practices for testing, building, and relasing new tools.

## Is This the Red Team?

### Why we don't answer this question

The goal of a Red Team operation is often to test our policies and procedures when reacting to an actual threat. This includes identifying suspicious activity and following the appropriate runbook to investigate and respond to that threat.

If any team member, at any time, could simply ask *"Hey, this looks suspicious. Is this our Red Team?"* then this opportunity would be lost. **Instead, all suspicious activity should be treated as potentially malicious and acted upon accordingly**.

We have private Slack channels in place where designated team members can ask the Red Team if a certain activity belongs to them. This helps us to provide realistic opportunities to practice detection and response without escalating too far. For example, we would not want an emulated attack to affect production operations or escalate to third parties.

You can read more about this process in the ["deconfliction" section](./red-team-roe.html#deconfliction-process) of our rules of engagement.

### How the Red Team will respond to this question

If the Red Team is ever asked *"Is this you?"* by someone other than the designated team members mentioned above, they will respond with the following text:

> Thanks for your vigilance! Any suspicious activity should be treated as potentially malicious. If you'd like to contact security, you can follow the process here: [https://about.gitlab.com/handbook/security/#contact-gitlab-security](https://about.gitlab.com/handbook/security/#contact-gitlab-security).<br><br>Red Team operations provide an opportunity to practice detecting and responding to real-world attacks, and revealing an operation early might mean we miss out on that opportunity. Because of this, we have a policy to neither confirm nor deny whether an activity belongs to us. You can read more about this policy here: [https://about.gitlab.com/handbook/security/threat-management/red-team/#is-this-the-red-team](https://about.gitlab.com/handbook/security/threat-management/red-team/#is-this-the-red-team).

### How others should respond to this question

Because we want to treat all activity as potentially malicious, anyone else receiving this question should also use a consistent response. Feel free to use your own words. The following can be a guide: 

> We want to treat any suspicious activity as potentially malicious. Let's continue following our normal procedures to report and investigate this. Any Red Team operation will have controls in place to keep things from escalating too far. You can read more about this here: [https://about.gitlab.com/handbook/security/threat-management/red-team/#is-this-the-red-team](https://about.gitlab.com/handbook/security/threat-management/red-team/#is-this-the-red-team).

If the person receiving this question happens to be a Security Director or a trusted participant in an ongoing stealth operation, they can then use established channels to communicate with the Red Team.