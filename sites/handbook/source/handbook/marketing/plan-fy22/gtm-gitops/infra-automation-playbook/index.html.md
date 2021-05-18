---
layout: markdown_page
title: "GitOps GTM Sales Play: Infrastructure Automation"
---

## Overview

### What is GitOps?

GitOps is an operational framework that takes DevOps best practices used for application development such as version control, collaboration, compliance, and CI/CD, and applies them to infrastructure automation.

Learn more [here](https://docs.google.com/presentation/d/1o728pUdk1rrNqWAZpzZVdfZ3gzADvTXSssVzqL-6WB4/edit#slide=id.g8d846209b0_25_172) (tbd: replace with video)

### Sales Play Objective

Expand DevOps best practices to Infrastructure teams

### Who is this sales play for?  

* Primary: SDRs who call on new leads generated via associated campaign
* Primary: SALs and AEs who call on one or more existing or new GitLab customers  
* Secondary: SAs and TAMs who support one or more existing or new GitLab customers  

## Getting Started

### Who to meet

| | Typical Roles | Typical Titles |
| - | ----------- | -------------- |
| **Economic Buyer** | Director/VP/CIO of IT, Head of IT Infrastructure / Platform Engineering / Operations | SVP of Technology Operations, Sr. Manager Systems Engineering, Cloud Architect, Information Systems Architect |
| **User** | SRE, Infra Engineer, Sys Admin, Platform Engineer - have to execute frequent repetitive tasks to support dynamically changing elastic environments | DevOps engineer, Architect, Team Lead, DevOps Ninja |

More details [here](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/gitops/#personas)

### Keywords to hear

| Infrastructure as code | GitOps | Infrastructure automation |
| Configuration as code | Policy as code | Approvals for infrastructure changes |
| Terraform | Ansible | AWS Cloud formation |
| Weaveworks Flux | Argo CD | Terraform Cloud |

### Value discovery

### Common Pains

| Challenges "before scenarios" | So What? "negative consequences" |
| ----------------------------- | -------------------------------- |
| - How does your infrastructure team manage configurations, policies, variables etc consistently across your infrastructure? | No consistency, no knowledge sharing, no version control, click ops |
| - Are you able to ensure that changes are reviewed and approved by the right individuals - to ensure minimal disruption to your staging / production environments? | Higher risk as unauthorized changes can be shipped to production - causing performance issues / downtime, high skilled / highly paid resources may be doing menial tasks |
| - Is your infrastructure team able to consistently repeat the steps to setup an environment every single time? | No standardization, manual process - more error prone |

More questions [here](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/gitops/#discovery-questions)


### Common benefits

| Desired Future State (“After Scenarios”) | So What? (“Positive Business Outcomes”) |
| ----------------------------- | -------------------------------- |
| More automation | Less risk as manual repetitive tasks are error prone |
| Faster mean time to repair | Can be rolled back rapidly to a working definition of the infrastructure rather than troubleshooting before roll-back - resulting in faster time to repair |
| Faster time to value | Move from manual Click ops to GitOps to deploy more often |
| Compliant | Compliance is automated as every change is tracked |
| Reduced security exposure | All changes can be reviewed and approved, security for infrastructure code can be embedded within the pipeline |


### Required capabilities

To achieve the positive business outcomes highlighted above, what required capabilities does the customer need to solve for and how will success be measured?

'GitOps = Infrastructure as Code + Merge Request + CI/CD'

| Required capability	 | Customer Metrics |
| ----------------------------- | -------------------------------- |
| Version control for infrastructure code | Improved time to value - less manual, less error prone, more automated |
| Change control and collaboration for infrastructure | Lower change failure rate - more controls, more reviews and approvals |
| Compliance & Auditing | Lesser time spent in auditing, fewer compliance issues |
| CI/CD - test automation, pipeline configuration management | Higher deployment frequency - more automation |
| Rollback |  Lower mean time to repair - can roll back to working definition of infra before troubleshooting |


## Positioning value

### Elevator pitch

Have you faced infrastructure downtime and have not been able to trace it back to who made the changes, what changes were made and who approved it? Infrastructure automation with GitLab helps you bring Application DevOps best practices of collaboration, version control, CI/CD & Compliance to Infrastructure.

### Value Proposition (How GitLab does it?)

Unlike other vendors, GitOps with GitLab helps you manage physical, virtual and cloud native infrastructures. We use a tight integration with industry-leading infrastructure automation tools like Terraform, AWS Cloud Formation, and the like to meet you where you are - all with a single application.

Detailed section on How GitLab meets the market requirements [here](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/gitops/#market-requirements)

### Differentiators (How GitLab does it better?)

- Most competitive solutions require 5-6 integrations to achieve the GitOps workflow. GitLab offers version control, CI/CD and container registry & out of the box integration for config management, orchestration & infra provisioning.
- Better traceability across the workflow - GitLab can tie an infrastructure deployment all the way back to the change that was made - which is difficult in a workflow that is tied together with multiple solutions.
- Most competitors support predominantly cloud native - GitLab meets customers where they are supporting On-premise & cloud, physical, virtual, cloud native infrastructures
- Agent-based and Agentless approach - giving customers a choice to pick the right approach for their environments

More details [here](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/gitops/#top-3-differentiators)

### Competitors
Primary competitors: Flux (Weaveworks), Argo CD, Terraform Cloud
Secondary competitors: Codefresh, Transposit, Red Hat/IBM

Detailed competitive against primary competitors [here](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/gitops/#competitive-comparison)

### Handling Objections

Typical questions:
- I don't use Kubernetes, so GitOps is not relevant for me
- Our environment is too complex for GitOps
- GitOps gives more access to developers to fiddle with deployments, and infra teams are not comfortable with that
- (Infra / DevOps Engineer) I'm going to lose control over my work and environment

Detailed list of Q&A [here](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/gitops/#objection-handling)

### Customer Stories

- [WAG Labs](https://about.gitlab.com/blog/2019/01/16/wag-labs-blog-post/)
- [North Western Mutual](https://www.youtube.com/watch?v=yw7N82mXmZU)
- [Kiwi.com](https://www.youtube.com/watch?v=Un2mJrRFSm4)
- [VMware](https://www.youtube.com/watch?v=qXj4ShQZ4IM)
- [ValidaTek](https://www.youtube.com/watch?v=3uZE-ktP2Pc)
- [Gartner Peer Insights](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/gitops/#gartner-peer-insights)

### Resources

- [Pathfactory track for GitOps](https://learn.gitlab.com/l/gitops-gtm-content) to share with customers
- Complete list of presentations, web pages, whitepapers, blogs and videos available [here](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/gitops/#resources).

## Sales Play Tactics

### SALs and AEs

How to identify if you need to have to lead with a GitOps conversation?

#### Before discovery
1. Familiarize yourself with the GitOps sales play above - at a minimum watch the enablement video.
1. Ensure you are talking to the right persona - typically this is not a developer, could be a team lead, system architect, cloud architect -> from the infrastructure / operations side of the house.
1. Identify if the last interesting moment on pathfactory is from the [pathfactory track for GitOps](https://gitlab.lookbookhq.com/authoring/content-library/target/39413)

#### During discovery
1. Use the keywords listed above to identify if a lead is interested in a GitOps conversation
1. Familiarize yourself with the top discovery questions, objection handling and differentiators for GitOps. **Note it is very different form other conversations - as the persona we talk to is different**
1. Ensure you are able to identify business objectives and priorities during discovery. These could be one or more of the following:
  - Managing cloud native environments
  - Multi cloud / kubernetes adoption
  - Compliance related to infrastructure  

#### During evaluation
1. Share GitOps related [customer references](#customer-stories)
1. Share technical demos, webinars that are path of the [pathfactory track for GitOps](https://learn.gitlab.com/l/gitops-gtm-content)
1. Share [Gartner Peer Insights](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/gitops/#gartner-peer-insights)
1. Work with your SA to showcase a technical demo of GitOps

#### During negotiation / decision making
1. [Show how we are different](https://about.gitlab.com/handbook/marketing/plan-fy22/gtm-gitops/infra-automation-playbook/#differentiators-how-gitlab-does-it-better)
1. Share the Forrester TEI report from the [pathfactory track for GitOps](https://learn.gitlab.com/l/gitops-gtm-content)
1. Use the [ROI calculator](https://about.gitlab.com/calculator/) to showcase the value of using GitLab as a single application over other solutions

### SA

How to identify if you need to have to lead with a GitOps conversation?

#### Before discovery
1. Familiarize yourself with the GitOps sales play above - at a minimum watch the enablement video.
1. Ensure you are going to meet with one of the right [user personas](https://about.gitlab.com/handbook/marketing/plan-fy22/gtm-gitops/infra-automation-playbook/#who-to-meet).
1. Familiarize yourself with the top discovery questions, objection handling and differentiators for GitOps.

#### During discovery
1. Ask the [discovery questions](https://about.gitlab.com/handbook/marketing/plan-fy22/gtm-gitops/infra-automation-playbook/#value-discovery). Listen to the customer and understand their pains and challenges.
1. As you hear their pains, challenges, business objectives and priorities, start using their own terms when explaining to them how GitOps with GitLab can help them.
1. Understand their technical requirements. For example, look to get answers to the following technical discovery questions:
  - Do their applications require a hybrid cloud infrastructure or multi-cloud?
  - Do they have any hard-dependencies on any infrastructure-as-code tool? e.g. Terraform, Ansible, etc.
  - Do they need GitOps for K8s, non-K8s or both?
  - In the case of K8s, are their clusters available outside their firewall?
1. Be prepared to do some competitive [objection handling](https://about.gitlab.com/handbook/marketing/plan-fy22/gtm-gitops/infra-automation-playbook/#handling-objections)

#### During evaluation
1. Prepare your own GitOps environment for demo purposes by following the steps from the [GitOps lab](https://gitlab.com/tech-marketing/workshops/cicd/cd-labs-instructions/-/blob/master/11.%20GitOps%20with%20GitLab.md) of the SA CD Workshop. This lab covers AWS as a cloud provider. If you'd like to add Google and/or Azure, you can extend your environment by leveraring our public-facing [GitOps demo](https://gitlab.com/gitops-demo).
1. Share technical demos, webinars that are path of the [pathfactory track for GitOps](https://learn.gitlab.com/l/gitops-gtm-content)
1. If the customer requires you participate in a PoV, gather the PoV requirements and prepare to execute the PoV. Some helpful resources to help you prepare are:
  - #gitops slack channel
  - #s_configure slack channel
  - GitOps Engineering
  - GitOps TMM
  - GitOps PM

### SDR

How to identify if you need to have a GitOps conversation with a lead?

#### Before your outreach / conversation
1. Identify where the lead is from -> See if the lead is from a GitOps campaign which has been generating  targeted leads for GitOps
1. Identify if the last interesting moment(s) on pathfactory is from the [pathfactory track for GitOps](https://learn.gitlab.com/l/gitops-gtm-content)
1. Use the keywords listed above to identify if a lead is interested in a GitOps conversation
1. Ensure you are talking to the [right persona](https://about.gitlab.com/handbook/marketing/plan-fy22/gtm-gitops/infra-automation-playbook/#who-to-meet) - typically this is not a developer, could be a team lead, system architect, cloud architect -> from the infrastructure / operations side of the house.
1. Ensure you are familiar with the top discovery questions, objection handling and differentiators for GitOps. **Note it is very different form other conversations - as the persona we talk to is different**

#### Customer outreach / conversation
1. There are a number of high performing outreach sequences available - use one that is already available and customize as required
1. Use the content from the [GitOps Pathfactory track](https://learn.gitlab.com/l/gitops-gtm-content) to share with your lead. They are categorized by the stage in the customer's journey. 

## Related Marketing Campaign

Marketing is running a related demand gen campaign.  

* A Demand Generation campaign is running across different channels (LinkedIn, Facebook, Google Search...) surfacing new leads from the Focus Account Lists, ICP Total Addressable Market, and Volume accounts. See the flow of the Marketing campaign [here](https://app.mural.co/t/gitlab2474/m/gitlab2474/1620648875422/b0575eec3f6839f6fd9672f34dfb5ca022b422f3?sender=epan1035) 
* A series of virtual events are scheduled throughout FY22, targeting new and existing Inquries. Shcedule of upcoming Infrastructure Automation/GitOps GTM related virtual events can be found in the [FY22 All-Marketing Calendar SSoT](https://docs.google.com/spreadsheets/d/1c2V3Aj1l_UT5hEb54nczzinGUxtxswZBhZV8r9eErqM/edit#gid=571560493)
