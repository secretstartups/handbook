---
layout: handbook-page-toc
title: "Blueprint: 2018/Q4"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## 2018Q4

We successfully completed the GCP migration, the Summit is behind us, and 2018Q3 is almost over. It is now time to
turn our attention to Q4, and while we are still working out OKR specifics, our **primary and overriding focus** for
Q4 will continue to be **GitLab.com’s availability**, and more specifically, **observable availability**. There are
two aspects to availability:

* protecting **uptime**, and
* protecting **user data**.

Making it **observable** entails measuring and evaluating availability against clearly specified objectives (SLXs)
that take into account error budgets.

When determining priorities, we must answer the question of whether the task at hand contributes to availability
along those two axes: if it does, we move forward; if it does not, it is likely safe to skip; if in doubt, we simply
ask. Efficiency, speed and cost optimizations are, at this stage, secondary goals. Maintaining high and stable
levels of measurable availability is, and will always be, one of our most critical OKRs. As our automation matures,
we will be able to increase our speed and optimize the environment.

### OKRs

Infrastructure's objective is to **make GitLab.com ready for mission-critical workloads**. In order to achieve this
goal, each team in Infrastructure has a charter to pursue this objective from different angles. SAE's goal is to
return GitLab.com to its nominal operating state when an incident takes place, whereas SRE's goal is to ensure
GitLab.com remains in its nominal operating state. In other words, SAE minimizes GitLab.com's MTTR and SRE maximizes
GitLab.com's MTBF.

Infrastructure's OKRs are crafted along these lines of thought.

## Roadmap

### Cultural Focus

Achieving ours goals requires a high-performance team that adheres to [**GitLab's values**](/handbook/values/).
We are not simply runnig GitLab.com: we are also building a team we love to work with. As Reed Hastings [eloquently
put it](https://www.quietrev.com/powerful-building-culture-freedom-responsibility/), we want to create a team where
"Oh, I’d want to come to work every day and solve *these* problems with *these* people".

There are three cultural aspects to focus on as we continue to develop and polish the team:

* Focus on **observable availability** at every turn and watch each other's back. Read and embrace Richard Cook’s
  seminal paper
  [*How Complex Systems Fail*](http://web.mit.edu/2.75/resources/random/How%20Complex%20Systems%20Fail.pdf) and
  apply its principles to GitLab.com’s care and feeding.
  * Adopt a **[Change Management mindset](/handbook/engineering/infrastructure/change-management/)**: evaluate risk, plan accordingly, protect the environment
  * Create **pre-flight checks** by defining conditions that must be met to initiate a change
  * Define the **change’s success in a measurable way** so that it can be properly evaluated
  * Execute **post-change verification** to validate the change was successful
  * Develop a **rollback strategy**, if applicable, and define when to invoke it
* Problem solving through more **disciplined engineering practices**. In particular, for complex and significant
  ideas or problems, document proposed designs, collecting final decisions (an item of particular significance on
  issues that generate sizeable discussions).
* We changed the department’s structure in Q3 to be more heterogeneous in the teams’ functional composition by
  including DBREs and SREs side by side in each team. We need to continue to move towards an inclusive
  Infrastructure-centric mentality and eliminate SRE-centric nomenclature where appropriate (i.e., #sre-lounge =>
  #infrastructure).

### Workload Focus

Our workload should be managed in a fairly predictable fashion. A minimum of 60% of our work should be known,
scheduled work. This work is defined as work that:
* Has been evaluated against our priorities and focus (i.e., OKRs)
* Has been properly designed and scoped, and productively discussed, resulting in issues that provide clearly defined implementation guidance and acceptance criteria for success.  

When the planned work entails design and discussion, no work changing production should be performed on that issue: create follow up issues as the end result and definition of the work to be done.

### Functional Focus

#### Database

##### Backup, Restore, and Verification

* **Reliable backup, restore and verification** `[data protection]`
  * Fully automated and monitored
  * Metrics: backup time and size, restore time and size, backup and restore speeds, verification time, confidence level, lag behind production of last verified backup
  * Protect backups with geographical distribution
  * Purging rotation of older, unnecessary backups

##### Replication

* **Reliable database replication** `[uptime]` and `[data protection]`
  * Fully automated and monitored
  * Near real-time replication `[uptime]`
  * Time-delayed replication `[data protection]`

#### Storage

* **Fortified Storage Nodes** `[uptime]` and `[data protection]`
  * Protect against file system corruption and unwanted deletions `[data protection]`
  * Enable disaster recovery and safe testing with large datasets `[uptime]`

* **Repo management tools** `[uptime]`
  * Ability to relocate projects and repos to alternate storage nodes

#### Observability

* **Error Budgets**
  * Master definition of uptime
  * Error budget accounting
* **Service breakdown**
  * Authoritative source of service definitions
    * Service dependencies
    * Attribution
* **Generalized metrics**
  * Service dashboards
* **Production Queue**
  * Refine change, incident and delta management
  * Label schema: severities, services
  * Reports
    * Open incidents
    * Incidents last week
    * Incidents per severity
    * Incidents per service
    * Upcoming changes
    * Deltas
