---
title: Plan:Project Management Backend Team
---

## Plan:Project Management backend team

The Plan:Project Management backend team works on the backend part of
GitLab's [Project Management category] in the [Plan stage].

For more details about the vision for this area of the product, see the
[Plan stage] page.

From an engineering perspective, we are also responsible for the [code
backing our GraphQL API][graphql]. This does not mean we own everything
about the API - each team is responsible for implementing its own
resources in GraphQL - but we are responsible for the overall
stewardship of this API.

[Project Management category]: /handbook/product/categories/#project-management-group
[Plan stage]: /direction/plan/
[graphql]: https://gitlab.com/groups/gitlab-org/-/epics/711

### Team members

{{% team-by-manager-role "Fullstack Engineering Manager(.*)Plan:Product Planning" %}}

### Stable counterparts

{{% stable-counterparts manager-role="Fullstack Engineering Manager(.*)Plan:Product Planning" role="Plan:Product Planning|Product Manager(.*)Plan|Senior Manager(.*)Engineering, Plan|Principal Engineer(.*)Plan|Security Engineer(.*)Product Planning|Senior Manager, Engineering(.*)Plan" %}}

### Hiring chart

Check out our [jobs page](/jobs/) for current openings.

### Team metrics dashboard

{{% include "includes/engineering/plan/project-management-dashboard.md" %}}

## Work

You can see how we work as a stage at the [Plan stage page].

For the backend team specifically, we use the standard GitLab
[engineering workflow]. To get in touch with the Plan:Project Management
backend team, it's best to create an issue in the relevant project
(typically [GitLab CE]) and add the ~"group::project management" label, along
with any other appropriate labels. Then, feel free to ping the relevant
Product Manager and/or Engineering Manager as listed above.

For more urgent items, feel free to use [#s_plan] on Slack.

[Plan stage page]: /handbook/product/categories/#plan-stage
[engineering workflow]: /handbook/engineering/workflow/
[GitLab CE]: https://gitlab.com/gitlab-org/gitlab-ce

### Capacity planning

{{% include "includes/engineering/plan/capacity-planning.md" %}}

#### Weighing bugs

{{% include "includes/engineering/plan/weighing-bugs.md" %}}

#### Planning Rotation

To assign weights to issues in a future milestone, we ask two team members to
take the lead each month. They can still ask questions - of each other, of the
rest of the team, of the stable counterparts, or anyone else - but they are the
initial. This should start on the 4th of the month, per the [Product Development Timeline].

To weight issues, they should:

1. Look through all issues with the ~"workflow::planning breakdown"
   label, filtered by your group, ~backend and ~"Next Up" (you can use the links in the table below).
1. For those they understand, they add a weight. If possible, they also add a
   short comment explaining why they added that weight, what parts of the code
   they think this would involve, and any risks or edge cases we'll need to
   consider.
1. For issues that already have a weight check that it's still appropriate for the work
   required, which may have changed since the effort was last estimated.
1. Timebox the issue weighting overall, and for each issue. The process is
   intended to be lightweight. If something isn't clear what weight it is, they
   should ask for clarification on the scope of the issue.
1. If two people disagree on the weight of an issue, even after explaining their
   perceptions of the scope, we use the higher weight.

[Product Development Timeline]: https://about.gitlab.com/handbook/engineering/workflow/#product-development-timeline

The rotation for upcoming releases is:

| Release | Weights due | Engineer       | Engineer          |
| ---     | ---         | ---            | ---               |
| 13.5    | 2020-09-13  |                |                   |

#### Historical Capacity

{{% include "includes/engineering/plan/historical-capacity.md" %}}

### Collaborating with Frontend

#### Using the ~"backend complete" label

The ~"backend complete" label is added to issues with multiple specializations (usually backend and
frontend) to indicate that the backend component is complete. Add this label when the backend work is
functionally complete, merged and verified but frontend, or other, work is ongoing.

### Picking something to work on

The [Plan:Project Management Build board] always shows work in the current
release, with [workflow columns] relevant to implementation. There is an
additional column to show in-progress community contributions. Filtering it by
~backend shows issues for backend engineers to work on.

It's OK to not take the top item if you are not confident you can solve
it, but please post in [#s_plan] if that's the case, as this probably
means the issue should be better specified.

[workflow columns]: /handbook/product-development-flow/

#### High Severity Issues

{{% include "includes/engineering/plan/high-severity-items.md" %}}

### Working on unscheduled issues

Everyone at GitLab has the freedom to manage their work as they see fit,
because [we measure results, not hours][results]. Part of this is the
opportunity to work on items that aren't scheduled as part of the
regular monthly release. This is mostly a reiteration of items elsewhere
in the handbook, and it is here to make those explicit:

1. We expect people to be [managers of one][efficiency], and we [use
   GitLab ourselves][collaboration]. If you see something that you think
   is important, you can [request for it to be scheduled], or you can
   [work on a proposal yourself][iteration], as long as you keep your
   other tasks in mind.
1. From time to time, there are events that GitLab team-members can participate
   in, like the [issue bash]. Anyone is welcome
   to participate in these.
1. If you feel like you want to have some specific time set aside, but
   aren't interested in the topics of an existing event, feel free to
   label issues with "For Scheduling" and copy your manager for visibility.

When you pick something to work on, please:

1. Follow the standard workflow and assign it to yourself.
1. Share it in [#s_plan] - if not even more widely (like in #development
   or #backend).

[collaboration]: /handbook/values/#collaboration
[results]: /handbook/values/#results
[efficiency]: /handbook/values/#efficiency
[iteration]: /handbook/values/#iteration

[request for it to be scheduled]: /handbook/engineering/workflow/#requesting-something-to-be-scheduled
[issue bash]: /community/issue-bash/

## Useful links

- [Plan:Project Management Build board] - this shows work in the current release
- [#s_plan] in Slack
- [Recorded meetings][youtube]
- [Retrospectives][retros]
- [Group Conversations] (archive; group conversations now happen at a the
  [section level])

[Plan:Project Management Build board]: https://gitlab.com/groups/gitlab-org/-/boards/1285239?label_name[]=backend
[#s_plan]: https://gitlab.slack.com/archives/s_plan
[youtube]: https://www.youtube.com/playlist?list=PL05JrBw4t0KoceqcTneOVmAzhEp6NinY0
[retros]: https://gitlab.com/gl-retrospectives/plan/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=retrospective
[Group Conversations]: http://gitlab-org.gitlab.io/group-conversations/plan/
[section level]: /company/team/structure/#organizational-structure
