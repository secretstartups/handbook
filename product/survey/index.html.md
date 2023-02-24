---
layout: handbook-page-toc
title: Product Survey Outcomes
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


## September

We got a lot of interesting feedback in this first survey!

Here on top I've summarised reponses. On the bottom we
have addressed every single question/remark that came up.

### Quantitative outcomes

64 responses, 40 from sales

#### What is the best 'selling' feature of GitLab? Why?

1. 25x: CI integrated with SCM
1. 24x: Single application for entire lifecyle
1. 4x: SCM
1. Rest: Approvals, HA, Security

#### What feature / change are (potential) customers most excited about? Why?

Number one and two had the plurality of the replies here.
Almost every feature was mentioned at least once.

1. Security features
1. Issues (incl. portfolio management), CI
1. Kubernetes
1. Almost every other feature in GitLab

#### What should we be working on, that we're not currently (or are planning to)? Why?

There seems to be a lack of awareness on what we're building in Plan, this is
addressed below, many things that were mentioned are in progress or planned for
the near-term future.

1. Issues (incl. portfolio management)
1. SCM / Code review
1. HA
1. Everything else

#### What are we doing product-wise that we shouldn't be doing? Why?

No consensus whatsoever, but some highlights:

- Spend less time on X, where X is currently dominated by other players in the market (JIRA, security tools, Auto DevOps)
- Building out more breadth
- Adding features to Core/Starter

### Conclusions and actions

#### There is a lack of insight in what we're building

We now have a separate vision page for each stage in the DevOps lifecycle.
You can find them as `/direction/[name of stage]`:

- [/direction/manage](/direction/manage/)
- [/direction/plan](/direction/plan/)
- [/direction/create](/direction/create/)
- [/direction/verify](/direction/verify/)
- [/direction/package](/direction/package/)
- [/direction/release](/direction/release/)
- [/direction/configure](/direction/configure/)
- [/direction/monitor](/direction/monitor/)
- [/direction/secure](/direction/secure/)

We will take the time to regularly present these in sales meetings,
and other occasions that can be easily shared.

#### It's unclear how we make decisions

On each of the DevOps stage pages linked directly above there is (or shortly will be)
section on how we prioritize and make decisions (given that this is not the same for each team).

We will also be repeating this survey every month, and publishing the results here,
and in a presentation.

We're looking into ways of gaining more insight from shared SalesForce links.
Today, the Create team uses them directly in their RICE scoring,
but looking at all links ever shared has revealed them to be a very noisy signal:
The majority of issues with salesforce links, only have a single link. There is a
handful of outliers that have 10-16 salesforce links, some of which are issues
that are scoped too broadly (e.g. integrate with X), whereas others are already
being worked on (group merge requests).

### Detailed answers to further comments

#### What should we be working on, that we're not currently (or are planning to)? Why?

##### We should work more on issues / portfolio management / requirements management / should make it better than JIRA

We are! You can see our full vision and plans here:

[Portfolio management](https://gitlab.com/groups/gitlab-org/-/roadmap?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=Plan&label_name%5B%5D=portfolio%20management&layout=QUARTERS)

[Project management (issues, boards, labels, milestones)](https://gitlab.com/groups/gitlab-org/-/roadmap?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=Plan&label_name%5B%5D=project%20management&layout=QUARTERS)

[Jira integration](/direction/#jira-integration)

[We are discussing requirements management](https://gitlab.com/gitlab-org/gitlab-ee/issues/7024)

##### HA out of the box should be better for everyone (Cloud Native doesn’t work yet for everyone)

xx

##### We should make further improvements to Geo

Andreas: We are! We are currently working on a roadmap for 2019. For a high-level perspective on what we want to do, see "What to expect from Geo in the near future" in [this recent Geo blog post](/blog/2018/09/14/how-we-built-gitlab-geo/).

##### Notifications need to be better

Andreas: We agree. There is a cross-team effort working towards improving activities/todos/notifications, see [Merge todos into notifications with pinned and unpinned notification sets](https://gitlab.com/gitlab-org/gitlab-ce/issues/48787). There’s also a dedicated Slack channel: [https://gitlab.slack.com/messages/C9CMR2EP4](https://gitlab.slack.com/messages/C9CMR2EP4).

##### Permissions for CI/CD

xx

##### Audit logs

Andreas: We agree, and this is planned for 2019. See the epic on [Auditing and data management improvements](https://gitlab.com/groups/gitlab-org/-/epics/81). We will also cover ideas in an upcoming blog post.

##### Dependency management

Fabio: we started working on it as part of the Secure stage ([dependency scanning](https://docs.gitlab.com/ee/user/application_security/dependency_scanning/) and [license compliance](https://docs.gitlab.com/ee/user/compliance/license_compliance/index.html)), there is also a [proposal](https://gitlab.com/gitlab-org/gitlab-ee/issues/7476) to make dependency management first-class.

##### More dashboards and reports for top-level management

Andreas: Agree. I recently added [Smart dashboards](https://gitlab.com/groups/gitlab-org/-/epics/365) as 2019 vision. Right now it’s still generic, and I’d love to get further input on what we should work on in 2019 besides personal and project.

Fabio: we are introducing [group-level security dashboard](https://gitlab.com/gitlab-org/gitlab-ee/issues/6709) that will include data for Directors and CxO.

[See analytics ideas here](/direction/#analytics). In particular, we want to have a variety of charts in a [generic dashboard with lots of chart types](https://gitlab.com/groups/gitlab-org/-/epics/313), including those for executive-level / senior leadership consumption.

##### Better support for non-developer workflows (designers, writers)

Andreas: Yes! I think we have an enormous potential here, especially for roles that are very close to the development workflow. Read: Designers, Technical writers. I plan to discover how we can support Designers needs better in our product in 2019. There will be a new product category "Product Design Management" planned for 2019.

Fabio: we want to support security teams as first-class users (e.g., default view to security dashboard)

##### Custom roles / permissions

Jeremy: we’re still immensely reluctant to add fully custom roles to GitLab. It adds a lot of complexity to the product, confuses our documentation, and adds an extra layer of configuration that we still don’t feel is worth the maintenance required. The underlying problem (our permissions framework isn’t flexible enough, esp. For rules-heavy enterprises) still demands a solution:

- We’ll continue building out feature-level configuration. This is less risk and we’re able to ship these changes faster.
- We’re considering a feature to make feature-level configuration more flexible, called Policies. This would be an EE feature that lets instances restrict what the various roles can do.

##### Better integration between Salesforce / GitLab / all internal apps

We want this as well. We're reevaluating whether we have capacity to work on this
in Q4.

##### GVFS

We have had conversations with Microsoft about GVFS and are following its development closely. There are a number of [considerations](https://gitlab.com/groups/gitlab-org/-/epics/93#considerations) that prevent using GVFS in most organizations today even if GitLab supported the GVFS protocol. Namely:

- the need to run a custom fork of the Git binary on every client, and
- the need to run a file system driver which only exists for Windows.

Most importantly we have higher priorities which are needed by many customers, namely Gitaly HA which is critical to the Cloud Native project, GitLab.com and the horizontal scalability of GitLab. Related to this is the deduplication of objects across fork networks.

##### More depth to core products: SCM, CI, issues (answered above)

Jason: See answer for "We should build more depth" below.

##### More continuous delivery work

Jason: I was hired as PM for CD, so the organization is taking investment in this seriously, and the work for the 2019 roadmap (and beyond) was just published [here](/direction/release). Feedback is of course welcome, and we now have a plan in place where we can go after strategic solutions in the space. Improving our CDRA analyst performance is a big part of this and you can see that reflected in the strategic items in the roadmap.

##### Build a training platform, like trailhead for SFDC

This is one for customer success!

##### Better search (global search)

Definitely agree. We want to deliver a global, performant search for GitLab in 2019, including a [command palette](https://gitlab.com/groups/gitlab-org/-/epics/255) for common tasks.

[We want to get Elasticsearch on GitLab.com and then deepen and broaden global search capabilities.](/direction/#search)

##### Integrate with Trello

We have a very [basic integration with Trello](https://docs.gitlab.com/ee/integration/trello_power_up.html), and would [welcome contributions](https://gitlab.com/gitlab-org/gitlab-ce/issues/44562).

##### Better support for fully offline instances - can’t run Auto DevOps + SAST

Fabio: there any many technical limitations that actually prevent it to be done, but we want to work on this (see [issue](https://gitlab.com/gitlab-org/gitlab-ee/issues/4742))

##### Dashboard for license compliance

Fabio: we have a [proposal](https://gitlab.com/gitlab-org/gitlab-ee/issues/7149) to manage licenses at group-level.

##### Proprietary security capabilities, not just open source

Fabio: we already have Gemnasium as part of our security features for dependency scanning, and we are considering adding more but we also don’t want to provide too many integrations since we are a [single application](/handbook/product/single-application)

##### Code analytics

xx

##### Something that is more competitive with artifactory

xx

##### More audit

Andreas: We agree, and this is planned for 2019. See the epic on [Auditing and data management improvements](https://gitlab.com/groups/gitlab-org/-/epics/81). We will also cover ideas in an upcoming blog post. Also see [Audit logs](#audit-logs) further up.

##### Better support for Windows shops

xx

#### What are we doing product-wise that we shouldn't be doing? Why?

##### Auto Devops is not very good, doesn’t work in practice / complex customer scenarios. We should spend less time on it

Andreas: Note, there is also [Making auto devops easier / better](#better-support-for-fully-offline-instances---cant-run-auto-devops--sast) above.

##### Should be easier to make product prioritize things

Talk directly with the product manager of the related DevOps stage.
If this doesn't work, reach out directly to Job or Mark.

##### We should build more depth

The Create team is working to significantly improve the depth of support for code reviews and approvals for complex real world situations where there are large changes, multiple rounds of review and more.

Andreas: On the Manage team, we are planning the same. While we are extending our range of [product categories in 2019](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/14277/diffs), improving the experience and details of our product is a major part of our plans moving forward.

Jason: We are focusing on this year for [release](/direction/release)/[verify](/direction/verify); both have the below theme for the coming year to try to focus on how we solve problems in deeper ways not just be adding more breadth.

❤️ **More Complete (Minimally Lovable) Features to Solve Complex Problems**

V1 feature iterations are how we build software, but at the same time we need to continue to curate those features that have proven their value into complete, lovable features that exceed our users expectations. We will achieve this by growing individual features, solving scalability challenges that larger customers see, and providing intelligent connections between individual features. Doing this lets us solve deeper, more subtle problem sets and - by being focused on real problems our users face - we'll leave the competition behind.

##### Our MVCs are not features, should make a more narrow definition

We're working with product marketing on making it easier to provide context.
In addition, our new vision pages should go a long into doing this.

##### We take on too much breadth, risk competitors being better at our core

Jason: This seems to be mostly answerable using the "We should build more depth" answers above.

##### We should spend more time on onboarding / training

Agreed. We're just starting a Growth team that will look at ways we can
do this most effectively.

##### Teach new features to support

Jason: We also have a responsibility to teach our users, which we do through the release post primarily I think. I bet that support is reading these - if they are finding it lacking, then our users probably are too, and we could work together to ensure both support and our customers (at least who follow the release posts) are both properly up to speed.

##### We should not add anything to Core/Starter

Our biggest competitor should be ourselves. If we fail to improve Core or Starter, customers are more likely to pay for a competitor than chose GitLab. The community is a valuable asset to the company and an exclusive focus on Premium and Ultimate will alienate them.

##### Our security features are not worthy to replace BlackDuck, Veracode, etc. We should add more reports and information to be able to replace them

Fabio: considering that we entered this area in late 2018, we are quickly ramping up and we constantly iterate every release to improve our security features. The fact we are already compared to market leaders is a good indicator we are going in the right direction!

Product survey Q&A.md
Displaying Product survey Q&A.md.