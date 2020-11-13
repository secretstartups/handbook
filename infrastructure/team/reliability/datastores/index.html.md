---
layout: handbook-page-toc
title: "Datastores Team"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Who We Are (WIP)

The Datastores team owns our persistent storage platforms in GitLab, namely our PostgreSQL databases (our main priority) and our Gitaly backend service.

PostgreSQL Databases we look after in Gitlab:
- Staging cluster.
- Production cluster.
- Archive and Delayed production replicas.
- Cloud SQL cluster in ops.gitlab.net.
- Prefect Cloud SQL databases, staging and production clusters.

Other components we take care of, as part of the Database ecosystem in Gitlab:
- Patroni templates.
- Consul (running on the Database clusters).
- PG Bouncer connection pooler.

Gitaly components we maintain:
- Repository File servers.
- Gitaly App.
- Praefect - as part of our [Gitaly Cluster architecture](https://docs.gitlab.com/ee/administration/gitaly/praefect.html).


Datastores is:

| Person | Role |
| ------ | ------ |
|[Alberto Ramos](/company/team/#albertoramos)|[Engineering Manager, Reliability](https://about.gitlab.com/job-families/engineering/engineering-management-infrastructure/#engineering-manager-reliability)|
|[Alejandro Rodríguez](/company/team/#eReGeBe)|[Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Ahmad Sherif](/company/team/#ahmadsherif)|[Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Henri Philipps](/company/team/#hphilipps)|[Senior Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Jose Cores Finotto](/company/team/#jose-finotto)|[Staff Database Reliability Engineer](/job-families/engineering/database-reliability-engineer/)|
|[Nels Nelson](/company/team/#nnelson)|[Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|Open Position|[Database Reliability Engineer](/job-families/engineering/database-reliability-engineer/)|


## Vision

*WIP*

## Tenets

- Data integrity and consistency are our top priority - GitLab.com depends very much on that.
- Automation as a way to run things with no manual intervention in production. All of our production changes are run via code.
- Reliability of our datastores, also top priority. As part of the Reliability group we endeavour to run GitLab.com with 99.95% (or higher) availability - our Datastores availability should enable that goal.
- We don’t want to fix things twice: If anything is broken, take your time to find a permanent (code based) solution, test it and roll it to production.
- Growth mindset: we believe that our abilities can grow with effort and persistence. Goals are opportunities to grow. The purpose of what you do every day is to improve.
- Obsession about avoiding service incidents, and fast mitigation if they do happen.

## How we work: 

We plan and execute our work based on 2-week Iterations, mostly in an asynchronous way.

### Issues lifecycle:
1. We create issues and epics to represent the work that we are/will be doing, as soon as we notice the work is required or needed to execute our priorities (DB/Gitaly roadmap, OKRs). We also get external requests that have to be labeled with ~"team::Datastores"  for us to triage them. 
2. All these issues can be found in our [Backlog Board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/2024251?&label_name[]=team%3A%3ADatastores&label_name[]=workflow-infra%3A%3ATriage). Issues are normally ordered by descending priority in this board, so they can be brought in this fashion to our Iteration/s.
3. An issue can be  promoted to our current or next planned iterations by applying the label ~"workflow-infra::Ready" and assigning the right Milestone to it (for current or next iterations). This is the [Iteration board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/1688503?milestone_title=Datastores%20team%20-%20W45&label_name[]=team%3A%3ADatastores) to manage the current Iteration/Milestone.
    - This has to be agreed with the team lead, aligned with our priorities expressed in the Iteration Planning issue.

A team member **looking for the next issue to work on** should look at:
- A) Iteration Planning Issue (clearly stated priorities) 
- B) Worflow-infra::ready lane in our [Iteration board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/1688503?milestone_title=Datastores%20team%20-%20W45&label_name[]=team%3A%3ADatastores)
- C) Promoting issues from the [Backlog Board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/2024251?&label_name[]=team%3A%3ADatastores&label_name[]=workflow-infra%3A%3ATriage). They should assign themselves the issue, move it to ~"Workflow-infra::In progress" and start working on it.

4. Once an issue is finished, we move it to ~"Workflow-infra::Done", and finally close it when we are sure there is no more work to do about it.

### Issues and definition of done:
(WIP)


### Iteration planning: 
Our fortnight planning process looks like this:
1. Early **Tuesday** (every two weeks):
	- We automatically create our Iteration Planning Issue [example](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/11839), and the conversation around the priorities and commitments for the next 2 weeks start.
	- Iteration+3 Milestone is created programmatically.
2. **Friday afternoon**:
	- Our priorities for the next two weeks are decided: A detailed planning summary is captured in the Iteration planning issue  description.
		- Your next 2-4-6 week's capacity will be factored in this planning.
	- If there are any issues left in the [Iteration board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/1688503?milestone_title=Datastores%20team%20-%20W45&label_name[]=team%3A%3ADatastores)  they have to be re-planned for future sprints, by assigning the right future Milestone to the issue.
	- By Friday EOD the Iteration board will be pointed to the next Milestone.
1. **Monday Morning**: A new 2-week sprint/iteration starts, all same as before.

### Priorities:
- Iteration priorities are clearly expressed in the Iteration Planning Issue description.
- We are still not using the Priority Labels, but we will do soon. That will allow us to track the issues in more detail and raise/lower priorities based on both external and internal factors, for every issue.













