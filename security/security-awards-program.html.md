---
layout: handbook-page-toc
title: "Security Awards Program"
---

### On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

##  Intent and goals

Security is everyone's responsibility, and therefore, everyone can contribute to it.
We want to foster a strong security culture at GitLab, and reward the people who are raising our standards and expectations.

The purpose of the Security Awards Program is to incentivize GitLab team members and community contributors to solve as many security-related problems as possible.

The current leaderboard can be found [here](#current).

## Participation

Security is a team effort, and everyone is invited to contribute.

Are awardable:

- GitLab team members, except members of the [Security Department](https://about.gitlab.com/handbook/security/)
- Community contributors (including hackers from our bug bounty program)

The participation is purely voluntary and that there are no requirements to work extra hours or negatively impact team members’ work-life balance.

No registration is required to participate in the program:

- The Security Team (and GitLab team members) will identify [eligible actions](#eligible-actions) they want to nominate
- [Some actions will be rewarded automatically](#automatic-rewards)

### Eligible actions

| Action     | Who | Points |
| ---------- | --- | ------ |
| Nomination | MR or Issue Author | [Number of votes](#vote-for-nominations) * 100 |

Awarded actions can be issues or merge request. They must have been closed (issues) or merged (merge request) in the last 6 months, and
have at least the ~security label.

- Eligible example: [https://gitlab.com/gitlab-org/gitlab/-/issues/216028](https://gitlab.com/gitlab-org/gitlab/-/issues/216028) (confidential issue)
- Non Eligible example: [https://gitlab.com/gitlab-org/gitlab/-/issues/235110](https://gitlab.com/gitlab-org/gitlab/-/issues/235110) (confidential issue)

Non-exhaustive list of behaviors to incentivize:

- Defining, balancing, and implementing security requirements along with functionality
- Taking extra steps to implement a secure solution
- Finding a security risk in code (present for more than a release)
- Assisting in the building of security tooling/automation that integrates security into their work process
- Security team engagement

#### Automatic rewards

While nominations are set manually GitLab team members, some actions can be automatically rewarded with points.  
This is the case for security merge requests, which are merge requests labeled with `~security` and a `~severity::x`, and located under [`gitlab-org/security`](https://gitlab.com/gitlab-org/security).

| Action | Who | Points |
| ------ | --- | ------ |
| Merging a Merge Request with the `~security ~severity::1` labels | Author | 100 |
| Merging a Merge Request with the `~security ~severity::1` labels | Every reviewer | 50 |
| Merging a Merge Request with the `~security ~severity::2` labels | Author | 80 |
| Merging a Merge Request with the `~security ~severity::2` labels | Every reviewer | 40 |
| Merging a Merge Request with the `~security ~severity::3` labels | Author | 60 |
| Merging a Merge Request with the `~security ~severity::3` labels | Every reviewer | 30 |
| Merging a Merge Request with the `~security ~severity::4` labels | Author | 40 |
| Merging a Merge Request with the `~security ~severity::4` labels | Every reviewer | 20 |

These actions can still be nominated (by adding the `~security-awards::nomination` label to the merge request) if someone wants to highlight extra efforts or great achievement: the two are not mutually exclusive.

[Reviewers](https://docs.gitlab.com/ee/user/project/merge_requests/getting_started.html#reviewer) of these Merge Requests are also rewarded automatically, 
as soon as they're still assigned as reviewers at the time of the reward, so after the merge. People who unassign themselves after their review are not recognized at the moment
(please discuss in this [issue](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/security-awards/-/issues/18)).

### Quarterly contest

At the end of every [fiscal quarters](/handbook/finance/#fiscal-year), the top nominees for each category will be able to redeem their prizes.

### Yearly contest

The [leaderboard](#leaderboard) keeps a ranking of all participants for 4 consecutive quarters.
At the end of the fiscal year, the top winners across all categories will be able to redeem a bigger prize.
The Yearly Contest is starting with the FY22 only.

### Ties

In the case where two or more nominees would be in a tie for a place rewarded with a prize, their rank will set automatically by our automated process.
The first appearance in a ranking (quarterly or yearly) will have precedence. For example:

| Nominee | Points | Ranking | First award |
| ------- | ------ | ---- | ----------- |
| user1 | 400 | 1 | 2021-02-01 |
| user3 | 200 | 2 | 2021-01-01 |
| user2 | 200 | 3 | 2021-01-15 |

User2 and user3 are tied for the second place, but the user3's first action awarded in this ranking was before the first one for user2.

## Categories

Since Engineering is more likely to be exposed to security topics, we want this program to be fair and make everyone feeling included and involved.
Each category below will be rewarded. We have a limited number of prizes to distribute every quarter and year, so we want to make sure that all categories are well represented.

### Development

Engineers and Managers from the [Development Department](https://about.gitlab.com/handbook/engineering/development/).

### Engineering (except Development)

Rest of [Engineering](https://about.gitlab.com/handbook/engineering/): QA, Support, Product Design, Infrastructure, ...

### Non-Engineering

Rest of the company: Marketing, Product, Sales, Legal, PeopleOps, ...

### Community contributions

Only security fixes and contributions from the community are considered.  
We already have a [Bug Bounty Program](https://hackerone.com/gitlab) for external contributors to report security issues and bugs. 

## Leaderboard

Every action approved entitles the nominee for the quarterly and yearly contests.
The ranking of participants with their score is displayed on the leaderboards listed below.  

For confidentiality reasons, the details of rewarded actions are not publicly available, but all the data used to build these leaderboards is compiled in these [YAML files](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/security-awards/-/tree/main/data).

### Awarded Issues and Merge Requests

You can find the Issues and Merge Requests already being awarded so far:

* [https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=all&label_name\[\]=security-awards%3A%3Aawarded](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=security-awards%3A%3Aawarded)
* [https://gitlab.com/groups/gitlab-org/-/merge_requests?scope=all&utf8=%E2%9C%93&state=merged&label_name\[\]=security-awards%3A%3Aawarded](https://gitlab.com/groups/gitlab-org/-/merge_requests?scope=all&utf8=%E2%9C%93&state=all&label_name[]=security-awards%3A%3Aawarded)
* [https://gitlab.com/groups/gitlab-com/-/issues?scope=all&utf8=%E2%9C%93&state=all&label_name\[\]=security-awards%3A%3Aawarded](https://gitlab.com/groups/gitlab-com/-/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=security-awards%3A%3Aawarded)
* [https://gitlab.com/groups/gitlab-com/-/merge_requests?scope=all&utf8=%E2%9C%93&state=merged&label_name\[\]=security-awards%3A%3Aawarded](https://gitlab.com/groups/gitlab-com/-/merge_requests?scope=all&utf8=%E2%9C%93&state=all&label_name[]=security-awards%3A%3Aawarded)


### Current

- [FY23](./awards/leaderboard-fy23.html)

### Previous (closed)

- [FY22](./awards/leaderboard-fy22.html)
- [FY21](./awards/leaderboard-fy21.html)

## Prizes

Prize givings are on-hold while we work on award automation. Please refer to [our "Managing prize giving delays" issue](https://gitlab.com/gitlab-com/gl-security/engineering-and-research/security-awards/-/issues/26) for information, questions, and comments.
{: .alert .alert-warning}

See the [prizes page](./awards/prizes.html) for a detailed view.

## How to award people?

Anyone at GitLab can nominate someone else by using the label `~security-awards::nomination` on an issue or a merge request in the
[gitlab.com/gitlab-org](https://gitlab.com/gitlab-org) or [gitlab.com/gitlab-com](https://gitlab.com/gitlab-com) groups.

## Process

The following [scoped](https://docs.gitlab.com/ee/user/project/labels.html#scoped-labels-premium) labels are being used in this process:

- `~security-awards::nomination`
- `~security-awards::awarded`

On Mondays, a new issue is created in the [Security Meta project](https://gitlab.com/gitlab-com/gl-security/security-department-meta/) with the title 
`Security Awards Program Council Discussion week of [date]` and the 
[`~Security Awards Council`](https://gitlab.com/gitlab-com/gl-security/security-department-meta/-/issues?label_name[]=Security%20Awards%20Council) label.

A reminder is sent on Slack, in the `#sec-appsec` channel to remind everyone to vote for their favorite nominations.

### Vote for nominations

Every nomination is added as a threaded comment in these Council Issues. Only Security team members can vote for these nominations. Other votes will not count towards the vote totals.

Approvals are indicated by 👍 from at least 2 Security team members. Each vote (👍) will award 100 points for the nomination (ex: 7 👍 equals 700 points awarded).

Council Issues older than 2 weeks are automatically closed, and the `~security-awards::awarded` label is set on the awarded issues/merge requests. The ones ones without enough votes get their  `~security-awards::nomination` label removed.

The process is automated in this project: [https://gitlab.com/gitlab-com/security-awards/](https://gitlab.com/gitlab-com/security-awards/).

## Measurement of success

- Number of issues/MRs labelled with ~security-awards::nominations vs ~security-awards::awarded
- Total number of nominees in each category
- Total number of security issues resolved by severity
- Lines of security documentation improved
