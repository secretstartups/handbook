---
layout: job_family_page
title: "Site Reliability Engineer"
description: "Site Reliability Engineers (SREs) are responsible for keeping all user-facing services and other GitLab production systems running smoothly."
---

Site Reliability Engineers (SREs) are responsible for keeping all user-facing services and other GitLab production
systems running smoothly. SREs are a blend of pragmatic operators and software craftspeople that apply sound
engineering principles, operational discipline, and mature automation to our environments and the GitLab codebase.
We specialize in systems, whether it be networking, the Linux kernel, or some more specific interest in scaling,
algorithms, or distributed systems.

GitLab.com is a unique site and it brings unique challenges–it’s the biggest GitLab instance in existence. In fact,
it’s one of the largest single-tenancy open-source SaaS sites on the internet. The experience of our team feeds back
into other engineering groups within the company, as well as to GitLab customers running self-managed installations.

## As an SRE you will:

* Be on a PagerDuty rotation to respond to GitLab.com availability incidents and
  provide support for service engineers with customer incidents.
* Use your on-call shift to prevent incidents from ever happening.
* Run our infrastructure with Chef, Terraform and Kubernetes.
* Make monitoring and alerting alert on symptoms and not on outages.
* [Document every action](https://gitlab.com/gitlab-com/runbooks) so your findings turn into repeatable actions–and then into automation.
* Use the GitLab product to run GitLab.com as a first resort and improve the product as much as possible
* Improve the deployment process to make it as boring as possible.
* Design, build and maintain core infrastructure pieces that allow GitLab scaling to support hundred of thousands of concurrent users.
* Debug production issues across services and levels of the stack.
* Plan the growth of GitLab's infrastructure.

## You may be a fit to this role if you have some of these inclinations:

* Think about systems - edge cases, failure modes, behaviors, specific implementations.
* Know your way around Linux and the Unix Shell.
* Know what is the use of config management systems like Chef (the one we use)
* Have strong programming skills - Ruby and/or Go
* Have an urge to collaborate and communicate asynchronously.
* Have an urge to document all the things so you don't need to learn the same thing twice.
* Have an enthusiastic, go-for-it attitude. When you see something broken, you can't help but fix it.
* Have an urge for delivering quickly and iterating fast.
* Share our [values](/handbook/values/), and work in accordance with those
  values.
* Have experience with Nginx, HAProxy, Docker, Kubernetes, Terraform, or similar technologies
* Ability to use GitLab

## Projects you could work on:

* Coding infrastructure automation with [Chef](https://gitlab.com/gitlab-cookbooks/) and Terraform
* Improving our [Prometheus Monitoring](https://gitlab.com/gitlab-cookbooks/gitlab-prometheus) or building new [Metrics](https://gitlab.com/gitlab-org/gitlab-monitor)
* Helping [release managers](/handbook/engineering/#release-managers) deploy and fix new versions of GitLab-EE.
* Plan, prepare for, and execute the [migration of GitLab.com](/handbook/engineering/infrastructure/production/architecture/#infra-proposed-cloud-native) from virtual machines running on Google Cloud to cloud-native container-based deployments with Kubernetes using Google Kubernetes Engine.
* Develop a relationship with a [product group](/handbook/product/categories/), define their SLAs, share GitLab.com data on those SLAs and improve their reliability

# Leveling of Site Reliability Engineering at GitLab

## Areas of expertise/contribution for Leveling

### Technical:
* Use Chef and Ansible to efficiently manage our infrastructure
* Implement "Infrastructure as Code" using Terraform and GitLab CI/CD for automation
* Load balancing the application including Proxies and CDN
* Kubernetes and containerizing our system
* Administer a high-availability PostgreSQL cluster.
* Monitoring and Metrics in Prometheus, Grafana and integrations with Slack/PagerDuty
* Logging infrastructure
* Backend storage management and scaling
* Disaster Recovery and High Availability strategy
* Contributing to code in GitLab

### Execution:
* Team organization and planning
* Issue, Epic, OKR leadership and completion

### Collaboration and Communication:
* Creating blog posts
* Completing Root Cause Analysis (RCA) investigations
* Contributions to handbook, runbooks, general documentation
* Leading and contributing to designs for issues, epics, okrs
* Improving team practices in handoffs of work and incidents

### Influence and Maturity
* Involvement in hiring process - reviewing questionnaires, involved in interviews, qualifying candidates
* Knowledge sharing, mentoring
* Accountability, Self awareness, handling conflict in the team and receiving feedback
* Maintaining good relationships with other engineering teams in GitLab that help improve the product

## Levels for Site Reliability Engineer

### Site Reliability Engineer

#### Job Grade

The Site Reliability Engineer is a [grade 6](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades).

Technical:
1. General knowledge of 4 of the areas of technical expertise with deep knowledge in 1 area
1. Working knowledge of GitLab Product, including deeper knowledge of groups which may be part of stable counterpart assignments

Execution:
1. Provides emergency response either by being on-call or by reacting to symptoms according to monitoring and escalation when needed
1. Proposes ideas and solutions within the infrastructure team to reduce the workload by automation.
1. Plan, design and execute solutions within infrastructure team to reach specific goals agreed within the team.
1. Plan and execute configuration change operations both at the application and the infrastructure level.
1. Actively looks for opportunities to improve the availability and performance of the system by applying the learnings from monitoring and observation

Collaboration and Communication:
1. Improves documentation all around, either in application documentation, or in runbooks, explaining the why, not stopping with the what.
1. For stable counterpart assignments, act as a reliability champion.

Influence and Maturity
1. Shares the learnings publicly, either by creating issues that provide context for anyone to understand it or by writing blog posts.
1. Contributes to the hiring process in review questionnaires or being part of the interview team to qualify SRE candidates

### Senior Site Reliability Engineer

#### Job Grade

The Senior Site Reliability Engineer is a [grade 7](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades).

Are experienced Site Reliability Engineers who meet the following criteria

Technical:
1. Deep knowledge in 2 areas of expertise and general knowledge of all areas of expertise. Capable of mentoring Interns and Intermediate SREs in all areas and other SRE in their area of deep knowledge.
1. Working knowledge of GitLab Product, including deep knowledge of groups which may be part of stable counterpart assignments.
1. Contributes improvements to the GitLab codebase to resolve issues.

Execution:
1. Identifies significant projects that result in substantial cost savings or revenue.
1. Identifies changes for the product architecture from the reliability, performance and availability perspective with a data driven approach.
1. Influences the product roadmap and works with engineering and product counterparts to influence improved resiliency and reliability of the Gitlab product.
1. Proactively work on the efficiency and capacity planning to set clear requirements and reduce the system resources usage to make GitLab cheaper to run for all our customers.
1. Identify parts of the system that do not scale, provides immediate palliative measures and drives long term resolution of these incidents.
1. Identify Service Level Indicators (SLIs) that will align the team to meet the availability and latency objectives.

Collaboration and Communication:
1. Know a domain really well and radiate that knowledge through recorded demos, discussions in [DNA](/handbook/engineering/infrastructure/#design-and-automation-dna) meetings, or [Incident Reviews](/handbook/engineering/infrastructure/incident-review/).
1. Perform and run blameless RCAs on incidents and outages aggressively looking for answers that will prevent the incident from ever happening again.
1. For stable counterpart assignments, maintain awareness and actively influence stage group plans and priorities through participation in stage group meetings and async discussions. Act as a champion for reliability.

Influence and Maturity:
1. Set an example for team of SREs with positive and inclusive leadership and discussion on work.
1. Show ownership of a major part of the infrastructure.
1. Trusted to de-escalate conflicts inside the team.

### Staff Site Reliability Engineer

#### Job Grade

The Staff Site Reliability Engineer is a [grade 8](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades).

Are Senior Production SREs who meet the following criteria:

Technical:
1. Able to create innovative solutions that push GitLab's technical abilities ahead of the curve
1. Deep knowledge of GitLab and 4 areas of expertise. Knowledge of each area of expertise enough to mentor and guide other team members in those areas.
1. Contributes to GitLab codebase to resolve issues and add new functionality
1. Collaborates with stable counterpart teams to contribute to future architecture and influence roadmap.

Execution:
1. Strives for automation either by coding it or by leading and influencing developers to build systems that are easy to run in production.
1. Measure the risk of introduced features to plan ahead and improve the infrastructure.
1. Proposes and drives architectural changes that affect the whole company to solve scaling and performance problems.
1. Directly participates in contributing to and influencing the future direction of stable counterpart groups towards a more resilient and reliable GitLab product.
1. Lead significant project work for OKR level team goals.

Communication and Collaboration:
1. Works with engineers across the whole company influencing design to create features that will work well with SaaS and self hosted platforms.
1. Runs RCAs and epic level planning meetings to get meaningful work scheduled into the plan.
1. Lead the organization in identifying trends, drawing conclusion from problems we face, and establishing the actions needed to resolve these issues within forums such as engineering allocations.

Influence and Maturity:
1. Writes in-depth documentation that shares knowledge and radiates GitLab technical strengths
1. Has a high level of self awareness
1. Trusted to de-escalate conflicts inside and outside the team
1. Routinely has an impact on the broader Engineering organization
1. Helps to develop other team members in to senior levels and leaders in the team

## Specializations

### Delivery

SRE's with Delivery specialization focus primarily on improving the software delivery for GitLab.com, as well as self-managed users by improving the release management tooling and processes. They have a wide understanding of the system and application architecture, and have a strong observability background. They are expected to contribute to various GitLab projects with a software delivery focus and point of view.


#### Responsibilities

Delivery SRE responsibilities are the same as for their Backend Engineer team colleagues, defined in [the backend engineer role](../../backend-engineer#delivery). While the backend engineers approach their responsibilities from a software developer point of view, the SRE's approach the same problems from the operational perspective and collaborate closely on finding an optimal solution that will safely and quickly deliver code to various supported environments.

Additional responsibility that Delivery SRE's are tasked with is ensuring shortening the software delivery times by introducing new technologies and migrating from existing established infrastructure, such as migrating from Virtual Machines to the Kubernetes platform and similar.

### Scalability

SRE's with Scalability specialization focus primarily on the application side of GitLab running on GitLab.com, through improving
the architecture as GitLab.com continues growing. They have a strong development background (expected to
continuously contribute to GitLab codebases), and have a good grasp on observability and systems operations.

#### Responsibilities

1. Analyse existing, create and maintain new GitLab.com [Service Level Objectives](https://en.wikipedia.org/wiki/Service-level_objective).
1. Define, improve, and engage in adapting architectural application bottlenecks as observed on GitLab.com.
1. Troubleshoot, evaluate and resolve operational challenges contributing to defined SLO's.
1. Work with other engineering stakeholders on resolving larger architectural bottlenecks and participate through GitLab.com point of view.
1. Work in close collaboration with software development teams to shape the future roadmap and establish strong operational readiness across teams.
1. Scale systems through automation, improving change velocity and reliability.
1. Leverage technical skills to partner with team members and be comfortable diving into a problem as needed.

### Environment Automation

SRE's with Environment Automation specialization primarily focus on provisioning of various GitLab environments, and automating every operational aspect of the application lifecycle. They have a strong operational background, but their strength is in converting regular manual actions into repeatable automated tasks.

#### Responsibilities

1. Automating every operational task is a core requirement for this role. For example, package updates, configuration changes across all environments, creating tools for automatic provisioning of user facing services, etc.
1. Responding to platform emergencies, alerts, and escalations from Customer Support.
1. Ensure systems exist to manage software life-cycles (e.g. Operating Systems) with a minimum of manual effort.
1. Develop a fully automated multi-environment observability stack based on the existing SaaS system, and extend it to predict capacity needs based on the usage patterns.
1. Plan for new service roll-outs, expansion and capacity management of existing services, and work with users to optimise their resource consumption.

## Career Ladder

The next step for both individual contributors and managers of people is to move to the [Engineering Management - Infrastructure](/job-families/engineering/infrastructure/engineering-management/) job family.

## Performance Indicators

Site Reliability Engineers have the following job-family performance indicators:

* [GitLab.com Availability](https://about.gitlab.com/handbook/engineering/infrastructure/performance-indicators/#gitlab-com-availability)
* [GitLab.com Performance](https://about.gitlab.com/handbook/engineering/infrastructure/performance-indicators/#gitlab-com-performance)
* [Apdex and Error SLO per Service](https://about.gitlab.com/handbook/engineering/infrastructure/performance-indicators/#apdex-and-error-slo-per-service)
* [Mean Time to Detection](https://about.gitlab.com/handbook/engineering/infrastructure/performance-indicators/#mean-time-to-detection-mttd)
* [Mean Time to Resolution](https://about.gitlab.com/handbook/engineering/infrastructure/performance-indicators/#mean-time-to-resolution-mttr)
* [Mean Time Between Failure](https://about.gitlab.com/handbook/engineering/infrastructure/performance-indicators/#mean-time-between-failures-mtbf)
* [Mean Time to Production](https://about.gitlab.com/handbook/engineering/infrastructure/performance-indicators/#mean-time-to-production-mttp)
* [Disaster Recovery Time to Recovery](https://about.gitlab.com/handbook/engineering/infrastructure/performance-indicators/#disaster-recovery-dr-time-to-recover)


## Hiring Process

All interviews are conducted using Zoom video conferencing software. To learn more about someone conducting your interview, find their job title on our team page.

Please keep in mind that you can be declined at any stage of the process. You should consider each of the following bullets as though the words, "If selected" precedes them.

* You will receive a technical questionnaire to complete.
* You will be invited to schedule a 30 minute screening call.
* You will discuss your technical skills for 60 minutes with a member of the Reliability Engineering team.
* You will have 2-3, 45 minute team interviews with at least one Site Reliability Engineer.
* You will talk for 60 minutes with a Reliability Engineering hiring manager.

It's possible you may have additional 60 minute interviews with either the Director of Infrastructure Engineering, the VP of Engineering, or both.

If approved, you will subsequently be made an offer.

Additional details about our process can be found on our hiring page.

We are an equal opportunity employer and value diversity, inclusion and belonging at our company. We do not discriminate on the basis of race, religion, color, national origin, gender, sexual orientation, age, marital status, veteran status, or disability status.
