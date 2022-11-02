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

Further details can be found in the [job family description](/job-families/engineering/security-engineer/#red-team).

## What the Red Team Does

### Purple Team Operations

We use the term "*Purple Team*" to describe an open collaboration between our defensive security folks (aka our "Blue Team") and our offensive security folks (aka our "Red Team"). Red + Blue = Purple. When the Purple Team performs an operation, the work is visible to all GitLab team members. This includes building adversary profiles, discussing hypothetical attack and defense scenarios, and emulating attack techniques in our environment.

You can read more about this process in [Purple Teaming at GitLab](purple-teaming/), and you can contribute, comment, view, or interact with us on Slack in the `#purple-team-ops` channel where we discuss ongoing purple-team operations.

Building efficient and understandable processes for our operations that work for us and the teams we collaborate with is important.  However, given the need, we will prioritize collaboration with our peers over the processes and tools we have in place.  We feel this allows us to best suit the needs of the teams we work with and the organization as a whole.

### Stealth Operations

Other operations may be less visible, with only certain team members aware of the details. These operations provide the most realistic opportunity for GitLab to practice responding to real world attacks. To avoid ambiguity, we will refer to these as "Stealth Operations".

We list examples of techniques the Red Team may use, as well as those we specifically avoid in our [Rules of Engagement here](./red-team-roe.html#stealth-operation-techniques).

### Open Scope Work

Some activities are considered open-scope, meaning that they can be conducted at any time, from any source IP address, and against any GitLab-managed asset without prior approval or notification. The output may or may not be included in the reporting for planned operations, depending on the results and whether or not it is helpful to the Blue Team.

You can see a list of these activities in our [Rules of Engagement here](./red-team-roe.html#open-scope-techniques).

If these activities are detected by SecOps, they should be treated as potentially malicious and acted upon appropriately. Unless part of a planned operation, there should never be an assumption that suspicious behaviour is a Red Team activity.

Conducting open-source intelligence (OSINT) gathering against non-GitLab managed assets, such as social media sites, is also considered open-scope and may be conducted outside of planned operations.

If an open-scope activity uncovers a vulnerability that puts GitLab at immediate risk of compromise, SecOps will be notified via the official paging procedures.

## Red Team Technique Handover

The Red Team will develop new adversary emulation techniques on a regular basis, both during official operations as well as informal [open-scope](#open-scope-work) activities. For example, the Red Team may create a bot that logs into development instances and attempts to exploit a specific configuration. Once the risk has been proven and existing detection/response capabilities have been tested, it is time for the technique to be fully disclosed internally.

While this may result in product fixes or infrastructure changes, it is possible that vulnerable configurations may reappear in the environment. At this point, GitLab's [Vulnerability Management](https://about.gitlab.com/handbook/security/threat-management/vulnerability-management/) group will take over any ongoing scanning required to monitor for this scenario. The Red Team will share any tools they used for the initial discovery, but Vulnerability Management will generally implement a more production-ready permanent scanning solution.

## Is This the Red Team?

The goal of a Red Team operation is often to test our policies and procedures when reacting to an actual threat. This includes identifying suspicious activity and following the appropriate runbook to investigate and respond to that threat.

If any team member, at any time, could simply ask *"Hey, this looks suspicious. Is this our Red Team?"* then this opportunity would be lost. Instead, all suspicious activity should be treated as potentially malicious and acted upon accordingly.

Any unannounced Red Team operation will include team members across the organization who are fully informed of the operation's activities. These team members can help ensure the operation provides value by allowing incident response to continue without going too far. For example, we would not want an emulated attack to affect production operations or escalate to third parties.

If suspicious activity is detected and the matter is escalated to one of these team members, they may know right away whether or not the activity is related to a Red Team operation. If they are unsure, they can contact the Red Team directly via Slack. At this point, the Red Team will cease all activity until they can answer definitively whether or not they were the source of activity.

If the activity was indeed the Red Team, they will provide proof and the operation will generally continue. Specific rules for if/when an operation is revealed to all involved will be documented in the original project proposal. This may include provisions for stopping incident response but continuing the Red Team work to further test technical controls.

If the Red Team is ever asked *"Is this you?"* by someone who is not fully informed on an active operation, they will respond with the following text:

> Thanks for your vigilance! Any suspicious activity should be treated as potentially malicious. If you'd like to contact security, you can follow the process here: [https://about.gitlab.com/handbook/security/#contact-gitlab-security](https://about.gitlab.com/handbook/security/#contact-gitlab-security).<br><br>Red team operations provide an opportunity to practice these processes, and revealing an operation early might mean we miss out on that opportunity. Because of this, we have a policy to neither confirm nor deny whether an activity belongs to us. You can read more about this policy here: [https://about.gitlab.com/handbook/security/threat-management/red-team/#is-this-the-red-team](https://about.gitlab.com/handbook/security/threat-management/red-team/#is-this-the-red-team).

## Red Team Office Hours

Every two weeks the Red Team will host Red Team Office Hours. This meeting will be open to the entire company and will alternate between EMEA and APAC friendly times. For the most part these will be an open discussion with members of the Red Team but we will also use this time to perform "read outs" of recently completed Red Team Operations. Note that in some cases, depending on the content these will not be recorded or made public.
