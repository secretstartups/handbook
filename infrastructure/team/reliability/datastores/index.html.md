---
layout: handbook-page-toc
title: "Datastores Team"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Who We Are

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
|[Alberto Ramos](/company/team/#albertoramos)|[Engineering Manager, Reliability](https://about.gitlab.com/job-families/engineering/infrastructure/engineering-management/#engineering-manager-reliability)|
|[Alejandro Rodríguez](/company/team/#eReGeBe)|[Site Reliability Engineer](/job-families/engineering/infrastructure/site-reliability-engineer/)|
|[Ahmad Sherif](/company/team/#ahmadsherif)|[Site Reliability Engineer](/job-families/engineering/infrastructure/site-reliability-engineer/)|
|[Henri Philipps](/company/team/#hphilipps)|[Senior Site Reliability Engineer](/job-families/engineering/infrastructure/site-reliability-engineer/)|
|[Jose Cores Finotto](/company/team/#jose-finotto)|[Staff Database Reliability Engineer](/job-families/engineering/infrastructure/database-reliability-engineer/)|
|[Nels Nelson](/company/team/#nnelson)|[Site Reliability Engineer](/job-families/engineering/infrastructure/site-reliability-engineer/)|
|Open Position|[Database Reliability Engineer](/job-families/engineering/infrastructure/database-reliability-engineer/)|


## Vision

Run our production systems on Software. Love and protect the data that powers GitLab; losing data is simply game over.

## Tenets

- Data integrity and consistency are our top priority - GitLab.com depends very much on that.
- Automation as a way to run things with no manual intervention in production. All of our production changes are run via code.
- Reliability of our datastores, also top priority. As part of the Reliability group we endeavour to run GitLab.com with 99.95% (or higher) availability - our Datastores availability should enable that goal.
- We don’t want to fix things twice: If anything is broken, take your time to find a permanent (code based) solution, test it and roll it to production.
- Growth mindset: we believe that our abilities can grow with effort and persistence. Goals are opportunities to grow. The purpose of what you do every day is to improve.
- Obsession about avoiding service incidents, and fast mitigation if they do happen.

## How we work: 

We create, plan and execute our work based on 2-week Iterations, mostly in an asynchronous way.

### How do we create work 
We create work via:
- New [Infrastructure-project](https://gitlab.com/gitlab-com/gl-infra/infrastructure) epics.
- New [Infrastructure-project](https://gitlab.com/gitlab-com/gl-infra/infrastructure) issues, using the story-datastores issue template.

To create a new Datastores issue:
- Go to the [Infrastructure-project](https://gitlab.com/gitlab-com/gl-infra/infrastructure), select `Issues`, `New Issue`, and on the `Template` drop down select `story-datastores`.
- Fill the template, following these guidelines:
  1. **Summary**: Include here only a high level description of the problem and the work to do. 2-4 lines should suffice.
  1. **Current Situation**: Include this section if you need to explain what is broken or not working well. Please be succinct and to the point.
  1. **Desired Outcome**: Description, in some detail, of the end result to achieve when this issue is finished. Try not to be prescriptive on "how to implement it" but focused on "what to implement".
  1. **Additional background and comments**: Here you can add broader information and context that can help to progres the issue, which has not been included in previous sections.
  1. **Acceptance Criteria**: This follows our [definition of done](https://about.gitlab.com/handbook/engineering/infrastructure/team/reliability/datastores/#issues-and-definition-of-done). 
     - Try to be as detailed/atomic as possible.
	 - It should cover the full scope of required work for the issue. In other words, the Datastores team member assigned should be confident that if they address the different points here the issue will be completed, ready to be closed.
	 - If you don't know in detail leave a temporary note: Be aware that this section should be complete before the team starts working on this issue.
  1. **Writting style**:
	 - Express yourself in a way that others can understand and follow easily your train of thoughts. Be empathetic with your team members.
	 - Remember about our writing style in GitLab: https://about.gitlab.com/handbook/communication/#writing-style-guidelines
	 - Some good advice in how to write simple and effective: [18 quick fixes to sharpen your writing](https://medium.com/swlh/write-to-express-not-to-impress-465d628f39fe)

### Issues lifecycle:
1. We create issues and epics to represent the work that we are/will be doing, as soon as we notice the work is required or needed to execute our priorities (DB/Gitaly roadmap, OKRs).
   - We also get external requests that have to be labeled with ~"**team::Datastores**"  for us to triage them. 
2. All these issues can be found in our [Backlog Board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/2024251?&label_name[]=team%3A%3ADatastores&label_name[]=workflow-infra%3A%3ATriage). Issues are normally ordered by descending priority in this board, so they can be brought in this fashion to our Iteration/s.
3. An issue can be  promoted to our current or next planned iterations by applying the label ~"workflow-infra::Ready" and assigning the right Milestone to it (for current or next iterations). This is the [Iteration board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/1688503?milestone_title=Datastores%20team%20-%20W45&label_name[]=team%3A%3ADatastores) to manage the current Iteration/Milestone.
    - This has to be agreed with the team lead, aligned with our priorities expressed in the Iteration Planning issue.

A team member **looking for the next issue to work on** should look at:
- A) Iteration Planning Issue (clearly stated priorities) 
- B) Worflow-infra::ready lane in our [Iteration board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/1688503?milestone_title=Datastores%20team%20-%20W45&label_name[]=team%3A%3ADatastores)
- C) Promoting issues from the [Backlog Board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/2024251?&label_name[]=team%3A%3ADatastores&label_name[]=workflow-infra%3A%3ATriage), following the [point 3 above](https://gitlab.com/-/ide/project/gitlab-com/www-gitlab-com/edit/master/-/sites/handbook/source/handbook/engineering/infrastructure/team/reliability/datastores/index.html.md#issues-lifecycle). They should assign themselves the issue, move it to ~"Workflow-infra::In progress" and start working on it.

4. Once an issue is finished, we move it to ~"Workflow-infra::Done", and finally close it when we are sure there is no more work to do about it.

### Issues and definition of done:
We use the following [definition of done](https://www.agilealliance.org/glossary/definition-of-done). Your contribution is not done until you have made sure it meets all of the requirements stated in the issue/epic _Acceptance Criteria_ section, as in this basic [example](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/10451).

Every issue/epic must include this. If at the time of creation the criteria is not clear, or if the issue is being created by an external reporter from whom we don't expect that level of specificity, the definition of done should be included before starting work on the issue/epic. Make sure all the checkboxes are ticked before you call the issue/epic "done".

### Iteration planning: 
Our async fortnight planning process looks like this:
1. Early **Tuesday**, every two weeks:
	- We automatically create our Iteration Planning Issue [example](https://gitlab.com/gitlab-com/gl-infra/sre-datastores/datastores-team-activities/-/issues/4), and the conversation around  priorities and commitments for the next 2 weeks start.
	- Iteration+3 Milestone is created automatically.
	- Team member's next 2 weeks of project capacity time (in days) will be collected in the planning issue. Important to take into account:
	  - Discount time on call, plus 2/3 additional days to complete Incident Reviews, progress Corrective Actions and more.
	  - Discount time off (vacation), Family&Friend days, bank holidays, full-day training and other non-project days.
1. **Wednesday - Friday** :
	- Issues (and epics) are assigned and validated progressively with the team members, according to the team priorities.
	- The Datastores team members estimate the issues/epics effort (units = hours).
	- The team capacity is compared with the issues/epics effort estimates, assigning iteratively only work that is achievable during the iteration.
1. **Friday afternoon**:
	- Our priorities and iteration plan for the next two weeks are decided: A detailed planning summary is captured in the Iteration Planning Issue description.
	- If there are any issues left in the [Iteration board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/1688503?milestone_title=Datastores%20team%20-%20W45&label_name[]=team%3A%3ADatastores) they have to be re-planned for future sprints, by assigning the right future Milestone to the issue.
	- By Friday EOD the Iteration board will be pointed to the next Milestone.
1. **Next Monday Morning**: A new 2-week sprint/iteration starts. The team will executed as planned in the Planning Issue.

Every two Mondays the team has the "Datastores Team catch up (or iteration planning)" call, we where we can do sync iteration planning and refining - in addition to our Iteration Planning Issue async planning.

### Priorities:
- Iteration priorities are clearly expressed in the Iteration Planning Issue description.
- We are not using the Priority Labels yet, but we will do soon. That will allow us to track the issues in more detail and raise/lower priorities based on both external and internal factors, for every issue.













