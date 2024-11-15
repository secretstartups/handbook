---
title: "Red Team"
---

GitLab's internal Red Team conducts security exercises that emulate real-world threats. We do this to help assess and improve the effectiveness of the people, processes, and technologies used to keep our organization secure.

The Red Team does not perform penetration tests, and the work we do is not focused on delivering a list of vulnerabilities in a specific application or service.

Malicious actors are not constrained by the narrow focus of traditional security testing. We must take on this adversarial mindset in order to challenge our own assumptions and identify areas for improvement across our entire organization. We do this by emulating the real-world tactics, techniques, and procedures (TTPs) of threats that are most relevant to our environment.

This approach allows groups across GitLab to practice detecting and responding to threats in a controlled manner. We can then better understand our current defensive capabilities and work to improve them before we are faced with the real thing.

The Red Team operates under a predefined set of [rules of engagement]({{< ref "red-team-roe" >}}). The rules of engagement exist to inform GitLab's team members on how the team operates during engagements. It provides guidelines for determining scope, the ethics we employ during our engagements, how we collaborate as a security team, and how we escalate vulnerabilities and exploits we discover during those engagements.

Further details can be found in the [job family description](/job-families/security/red-team).

## What the Red Team Does

### Stealth Operations

We spend most of our time on stealth operations, providing GitLab an opportunity to practice responding to real-world attacks. During a stealth operation, only a small group of GitLab team members are aware of the details. We call these people "trusted participants", and they help keep operations safe and productive.

Stealth operations can vary in format and length. Some follow a more defined cycle with clear start and end dates, typically spanning 3-6 months. These operations often conclude when a significant detection event occurs, allowing us to evaluate the full response process. Other operations are continuous, designed to emulate persistent threats. In these cases, if we're detected, we regroup, adapt our tactics, and continue pursuing our objectives — just as real adversaries would.

All our stealth operations emulate threats most likely to target GitLab, our platform, and our customers. This focused approach sharpens our defenses and keeps us ahead of potential attacks.

Stealth operations require [special rules](red-team-roe#stealth-operations). Examples of techniques we may use and those we will specifically avoid can be found in [Stealth Operation Techniques](red-team-roe#stealth-operation-techniques).

### Purple Team Flash Operations

Purple Team flash operations are short, collaborative exercises that address rapidly emerging threats. While stealth operations can span 3-6 months or longer, we complete these flash operations in 1-2 weeks.

These operations start with our Threat Intelligence team identifying a specific threat that is likely to impact GitLab in the near future. We then collaborate with SIRT and others to quickly create and execute attack scenarios to test our preparedness.

Purple Team flash operations allow us to stay ahead of the news cycle. Our goal is to rapidly iterate on our defensive capabilities, ensuring we are ready for the real thing.

### Opportunistic Attacks

Opportunistic attacks are conducted outside the context of a formalized operation. They can be done at any time, from any source IP address, and against any GitLab-managed asset without prior approval or notification.

This type of work generally involves active attacks against real GitLab systems. It should always support our primary objective to improve the security of GitLab, with a goal to provide [properly labeled recommendations](#adoption-rate) or merge requests that solve security issues.

Opportunistic attacks are documented in issues that are visible to all team members. We do this work to test hypotheses, prove risks, and generally pursue improvements in a manner that is less structured than a formalized operation.

If vulnerabilities are discovered, we will exploit them and work to safely demonstrate maximum impact. This may involve establishing persistence, escalating privileges, and other common attack techniques.

When immediate action is required, we will follow the standard process for [reporting an incident](/handbook/security/#reporting-an-incident). For vulnerabilities that appear wide-spread or recurring, we will create an issue inside the [Vulnerability Management issue tracker](https://gitlab.com/gitlab-com/gl-security/product-security/vulnerability-management/vulnerability-management-internal/vulnerability-management-tracker/-/issues) to implement automated scanning capabilities.

We list examples of [opportunistic attack techniques]({{< ref "red-team-roe#opportunistic-attack-techniques" >}}) inside our rules of engagement.

### Research

Formalized operations and opportunistic attacks both require extensive research, and we factor that in when planning these activities.

Outside of that context, the Red Team may conduct research with an intent to provide helpful information to others in the security industry and the wider GitLab community. This includes blogs, vulnerability disclosures, conference talks, etc.

We will document our progress with any research projects inside GitLab.com. Depending on the sensitivity of the research, we may use a private project until it is ready to share.

As a Red Team, we emulate attackers. That means the information we share may be about how to attack things. We should always consider the safety of others and provide context on how people can use this information to better understand and address security risks.

## Red Team Logistics

### Red Team Operation Workflow

We maintain [public issue templates](https://gitlab.com/gitlab-com/gl-security/security-operations/redteam/redteam-public/resources/red-team-issue-templates) for planning, executing, and reporting on Red Team operations. At the start of an operation, we open a new epic and use these templates to create issues corresponding to each stage of work.

By using these templates, everyone on the team knows where we are at and what comes next. This helps us to operate asynchronously and to iterate on our processes based on how well the templates work.

### Red Team Report Delivery

All operations end with a final report. We use an issue template which is [shared publicly here](https://gitlab.com/gitlab-com/gl-security/security-operations/redteam/redteam-public/resources/red-team-issue-templates).

Security risks affect everyone, and it is essential to make our reports approachable and consumable to a broad audience. To achieve this, we make an effort to [use simple language](/handbook/communication/#simple-language). Our goal is to ensure that anyone in the company can understand the reports, even if they don't have a background in security.

After an operation has concluded, if relevant, we will create a short video summarizing the operation, which should not exceed five minutes. We will also schedule synchronous meetings with our Security Incident Response Team (SIRT) to go over the various attack steps of the operation and review detections and alerts.

We will then share the following in `#whats-happening-at-gitlab` and cross-post it in `#security`:

- A very short summary of the operation, including the video overview if there is one
- A link to the final report
- A link to the retrospective issue to solicit questions and feedback
- A disclaimer to keep the information [SAFE](/handbook/legal/safe-framework/#how-do-we-reinforce-safe).
- A tagged list of individual operation participants as well as the Security Incident Response Team (SIRT) as a whole for awareness since not all team members participate in an operation each time.

By doing this, we help foster a culture of security awareness throughout the organization and ensure that everyone can benefit from our work.

### Red Team Maturity Model

We use a custom maturity model to measure our progress and help guide our decisions. This is loosely based on the [Capabilities Maturity Model (CMM)](https://en.wikipedia.org/wiki/Capability_Maturity_Model). Our model contains five stages of maturity, each with very specific behaviors we strive to demonstrate and states we hope to achieve.

We built this using a GitLab issue board, with each maturity level being a list and each item being an issue. We can collaborate inside the issues, discussing our progress and providing links to related issues and merge requests. As we work on specific items, we will add custom labels to indicate an item is in progress, established, or replaced by an item in a latter maturity level.

GitLab team members can view the model [here](https://gitlab.com/gitlab-com/gl-security/security-operations/redteam/redteam-internal/red-team-maturity-model).

### Red Team Metrics

#### Adoption Rate

A successful Red Team program strengthens an organization's security through recommendations that are adopted, (i.e. accepted and ultimately implemented) by the organization. We track the lifecycle of these recommendations through to implementation using GitLab.com, calling this metric our "Adoption Rate."

Recommendations start as GitLab.com issues in the project closest to the team that can address them. We classify recommendations using labels:

- Detections & Alerts (`RTRec::Detection`)
- Security Controls (`RTRec::Control`)
- Processes and Procedures (`RTRec::Process`)

We track what happens after a recommendation is delivered by adding a secondary label to the issue with its current status or final outcome:

- Under review (`RecOutcome::UnderReview`)
- Accepted and actively being worked on (`RecOutcome::InProgress`)
- Accepted but backlogged (`RecOutcome::Backlogged`)
- Accepted but blocked (`RecOutcome::Blocked`)
- Fully adopted and closed (`RecOutcome::Adopted`)
- Partially adopted and closed (`RecOutcome::PartiallyAdopted`)
- Not adopted and closed (`RecOutcome::NotAdopted`)

An outcome label is added to the issue within one week of delivering the recommendation. A scheduled CI pipeline checks issues with classification labels to ensure they have an outcome.

#### MITRE ATT&CK Mapping

[MITRE ATT&CK](https://attack.mitre.org) is a framework for classifying and describing cyber attacks. We use ATT&CK extensively, as it helps us to align our operations to realistic threats and to speak a common language across security groups.

We use a combination of GitLab CI pipelines and GitLab Pages to build and host two reporting tools from MITRE:

- [MITRE ATT&CK Flow](https://github.com/center-for-threat-informed-defense/attack-flow)
  - [Our internal automation project](https://gitlab.com/gitlab-com/gl-security/security-operations/redteam/redteam-internal/automation/ci-attack-flow)
  - [Our internal build](https://flow.gl-redteam.com/)
- [MITRE ATT&CK Navigator](https://mitre-attack.github.io/attack-navigator/)
  - [Our internal automation project](https://gitlab.com/gitlab-com/gl-security/security-operations/redteam/redteam-internal/automation/ci-attack-navigator)
  - [Our internal build](https://navigator.gl-redteam.com/)
  - [Public blog describing the project](https://about.gitlab.com/blog/2023/08/09/gitlab-mitre-attack-navigator/)

For each completed operation, we build a flow chart to visualize the attack path and indicators of compromise. This chart can be exported as a [STIX 2.1 compliant](https://center-for-threat-informed-defense.github.io/attack-flow/language/) JSON file, meaning it is machine-readable and can be imported into other tools for analysis.

That same ATT&CK Flow file is imported into our ATT&CK Navigator project, which generates a heatmap visualizing our coverage across the ATT&CK matrix. We maintain a single heatmap for each operation, as well as a combined heatmap for all previous operations.

This is s great way to visualize the types of attack techniques we've emulated, and to help us understand areas we should focus on in future operations.

### Recommendations Issue Boards

The following issue boards provide a consolidated view of open recommendations. Most issues will be confidential and visible only to GitLab team members:

- [Red Team Recommendations: gitlab-org](https://gitlab.com/groups/gitlab-org/-/boards/5351140)
- [Red Team Recommendations: gitlab-com](https://gitlab.com/groups/gitlab-com/-/boards/5350979)

### "Assumed Breach" First

Security breaches happen. We read about them every day. Most of our operations are not meant to prove this risk, as it is a well-accepted industry fact.

Our Red Team operations often start from an "assumed breach" scenario where we gain initial access to GitLab's systems through a trusted insider. This is done in a realistic manner, leaving indicators of compromises ([IoCs](https://en.wikipedia.org/wiki/Indicator_of_compromise)) that reflect an actual breach. From there, we focus on post-exploitation tactics and techniques such as establishing persistence and elevating privileges.

The [MITRE ATT&CK matrix](https://attack.mitre.org) is a great way to visualize the depth and variety of attack techniques that come after initial access. Focusing on those techniques provides the best opportunity to assess and improve our detection and response capabilities.

In some cases, we may conduct operations specifically looking for initial access vectors to exploit. These require substantial time and resources, so we ensure the investment is justified by the potential for security improvements and learning.

Red Team members can also hunt for ways to "break in" to GitLab at any time in the context of an [Opportunistic Attack](#opportunistic-attacks). This allows us to quickly remediate any discoveries. Successful intrusions can then be re-used in future stealth operations as proof of a realistic initial access vector.

### Red Team Technique Handover

The Red Team will develop new adversary emulation techniques on a regular basis, both during formalized operations and opportunistic attacks. For example, the Red Team may create a bot that logs into development instances and attempts to exploit a specific configuration. Once the risk has been proven and existing detection/response capabilities have been tested, it is time for the technique to be fully disclosed internally.

While this may result in product fixes or infrastructure changes, it is possible that vulnerable configurations may reappear in the environment. At this point, GitLab's [Vulnerability Management](/handbook/security/product-security/vulnerability-management/) group will take over any ongoing scanning required to monitor for this scenario. The Red Team will share any tools they used for the initial discovery, but Vulnerability Management will generally implement a more production-ready permanent scanning solution.

### Red Team Tooling Development

The Red Team writes a lot of code, most of which will not be used in production environments. We want to prioritize simplicity and usability when writing it. This means writing code that is easy to understand and maintain, rather than worrying about optimization or unnecessary advanced functionality.

We will generally use Python because it is widely adopted in the security industry and has a large selection of libraries that can help us quickly develop tools.

When we need to create a single portable application, such as emulated malware, we will use Go.

Other factors may influence the decision on which language to use, such as forking an existing project or a requirement to emulate a specific attack scenario.

To help ensure consistency, we have created a [project template](https://gitlab.com/gitlab-com/gl-security/security-operations/redteam/redteam-internal/redteam-tools/red-team-tooling-template) available internally. This template includes a standard set best practices for testing, building, and releasing new tools.

## Is This the Red Team?

### Why we don't answer this question

The goal of a Red Team operation is often to test our policies and procedures when reacting to an actual threat. This includes identifying suspicious activity and following the appropriate runbook to investigate and respond to that threat.

If any team member, at any time, could simply ask *"Hey, this looks suspicious. Is this our Red Team?"* then this opportunity would be lost. **Instead, all suspicious activity should be treated as potentially malicious and acted upon accordingly**.

We have private Slack channels in place where designated team members can ask the Red Team if a certain activity belongs to them. This helps us to provide realistic opportunities to practice detection and response without escalating too far. For example, we would not want an emulated attack to affect production operations or escalate to third parties.

Managers at GitLab can also [submit a "Red Team Disclosure Request"](https://gitlab.com/gitlab-com/gl-security/security-operations/redteam/redteam-internal/red-team-operations/-/issues/new?issuable_template=request-for-disclosure) at any time. If the request contains evidence related to an ongoing Red Team operation, we will discuss next steps in the Slack channels mentioned above.

You can read more about this process in the ["Requests for Disclosure" section]({{< ref "red-team-roe#requests-for-disclosure" >}}) of our rules of engagement.

### How the Red Team will respond to this question

If the Red Team is ever asked *"Is this you?"* by someone other than the designated team members mentioned above, they will respond with the following text:

> Thanks for your vigilance! Any suspicious activity should be treated as potentially malicious. If you'd like to contact security, you can follow the process [here](/handbook/security/security-operations/sirt/engaging-security-on-call).
>
> Red Team operations provide an opportunity to practice detecting and responding to real-world attacks, and revealing an operation early might mean we miss out on that opportunity. Because of this, we have a policy to neither confirm nor deny whether an activity belongs to us. You can read more about this policy here: [{{< ref ".#is-this-the-red-team" >}}]({{< ref ".#is-this-the-red-team" >}}).

### How others should respond to this question

Because we want to treat all activity as potentially malicious, anyone else receiving this question should also use a consistent response. Feel free to use your own words. The following can be a guide:

> We want to treat any suspicious activity as potentially malicious. Let's continue following our normal procedures to report and investigate this. Any Red Team operation will have controls in place to keep things from escalating too far. You can read more about this here: [{{< ref ".#is-this-the-red-team" >}}]({{< ref ".#is-this-the-red-team" >}}).

If the person receiving this question happens to be a Security Director or a trusted participant in an ongoing stealth operation, they can then use established channels to communicate with the Red Team.
