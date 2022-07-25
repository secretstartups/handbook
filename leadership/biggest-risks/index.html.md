---
layout: handbook-page-toc
title: Biggest risks
description: >-
  On this page, we document the biggest risks and how we intend to mitigate
  them.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Introduction
We frequently get asked questions like:

- What are the biggest risks to the company?
- What are your top concerns?
- What are your biggest fears?
- What keeps you up at night?

On this page, we document the biggest risks and how we intend to mitigate them. We also have a [biggest tailwinds](/handbook/leadership/biggest-tailwinds) page to see what waves we are riding in our current market.

The list below has a rough ranking of risks. The items toward the top of the list have a higher probability of occurring and/or anticipated level of consequence if are to occur.

## 1. Security breach
{:#security-breach}

Our customers entrust their application code and data to GitLab.
A security breach that erodes that trust is a significant risk.
To ensure we safeguard our customers data, we:

1. Maintain a strong [Security Operations](/handbook/engineering/security/#security-operations) team
1. Hit our Application Security [remediation SLAs](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues)
1. Ensure our developers complete [secure code training](/handbook/engineering/security/#secure-coding-training)
1. Regularly perform [internal application security reviews](/handbook/engineering/security/#internal-application-security-reviews)
1. [Utilizing bug bounty programs](/handbook/engineering/security/#vulnerability-reports-and-hackerone) like HackerOne
1. Conducting [threat intelligence](/handbook/engineering/security/#threat-intelligence)
1. Have an [internal Red Team](/handbook/engineering/security/#red-team)
1. Enable our customers to secure their applications via our [Protect Stage](/handbook/product/categories/#protect-stage) categories and features
1. Prioritize meeting the [security](https://about.gitlab.com/security/) requirements of team members, users, customers, and other community members

## 2. GitLab.com Reliability
{:#gitlab-com-reliability}

As more customers depend on GitLab.com instead of self-managed instances, the reliability and security of GitLab.com is crucial to the success of the organization.
Even customers who use a self-managed GitLab instance are affected by GitLab.com outages because of the negative effect of the organization's reputation.
Outages not only cost customers money, they also affect [the company's valuation](https://fastinews.com/2019/09/05/slack-asks-investors-to-trust-that-outage-costs-were-a-one-time-issue/)
and have [led to lawsuits](https://www.law360.com/articles/1201122/shareholders-slap-slack-with-suit-over-outage-credits).
Disruption to GitLab.com's availability is a reputational risk.

We mitigate this risk in a number of ways:
* we prioritize [security and availability](/handbook/product/#prioritization) over velocity
* we have multiple [reliability teams](/handbook/engineering/infrastructure/team/reliability) who focus on ensuring our infrastructure is reliable.
* we have the [scalability team](/handbook/engineering/infrastructure/team/scalability/), whose focus is to make sure that the application running on that infrastructure is also reliable.
* we have an [infra-dev escalation process](/handbook/engineering/development/processes/Infra-Dev-Escalation/) created to prioritize issues affecting availability and reliability.
* the [Quality Engineering Department](/handbook/engineering/quality) makes sure everyone is aware of what the quality of the product is, empirically.
* the [Application Security team](/handbook/engineering/security/#application-security) are responsible for ensuring the security of the GitLab application, which we also operate on GitLab.com.
* the [Security Operations team](/handbook/engineering/security/#security-operations), who are responsible for managing security incidents across GitLab and GitLab.com.
* the [Abuse Operations team](/handbook/engineering/security/#abuse-operations), who are responsible for investigating and mitigating the malicious use of our systems.
* the [Red Team](/handbook/engineering/security/#red-team), who emulate adversary activity to improve the security of GitLab.com.
* the [Threat Intelligence team](/handbook/engineering/security/#threat-intelligence) who research and provide information about specific threats to help us protect GitLab.com from attacks.

## 3. Competition
{:#competition}

There will always be competitive products.
We tend to be much more cost effective because we build on open source, iterate quickly, get open source contributions, and only have to integrate new features with GitLab instead of a large number of tool combinations.

### GitHub
{:#github}

After GitLab core and home-grown DIY devops platforms, GitHub is GitLab's biggest competitor. After the Microsoft acquisition they have started to follow the single application strategy pioneered by GitLab.

In order to counter this risk, GitLab will:
1. While both GitLab and GitHub are [single application](/handbook/product/single-application/)s, GitLab has a much broader scope.
1. GitLab is focused on the enterprise use cases, GitHub on open source projects.
1. GitLab is independent of the hyper cloud providers and the best way to be multi-cloud.
1. Leverage our [community](/community/) to deliver new stages, categories and features faster
1. Continue to focus on [operational excellence](#operational-excellence) to out ship even substantially better financially resourced competition

### Operational excellence
{:#operational-excellence}

We will always have competition. To deal with competition, operational excellence can be a [surprisingly durable competitive advantage](https://twitter.com/patrickc/status/1090387536520728576).

We encourage operational excellence in the following ways:

1. [Efficiency value](/handbook/values/#efficiency)
1. [Long Term Profitability Targets](/handbook/finance/financial-planning-and-analysis/#long-term-targets)
1. [KPIs](/company/kpis/#gitlab-kpis)
1. Open source with a lot of wider community contributors who make it easier to uncover customer demand for features and allow our organization to stay leaner.
1. A [single application](/handbook/product/single-application/) makes the user experience better, allows us to introduce new functionality to users, and it makes it easier for us to keep our velocity.
1. Run the same code for GitLab.com and self-managed applications and [merged the CE and EE codebases](/blog/2019/02/21/merging-ce-and-ee-codebases/)
1. How we [make decisions](/handbook/leadership/#making-decisions)

### High Ambition
{:#high-ambition}

Our [focus on improvement](/handbook/values/#focus-on-improvement) and commitment to [iteration](/handbook/values/#iteration) keep us rooted in what's next. This could result in us lowering our [ambition](/handbook/product/product-principles/#how-this-impacts-planning). While we focus on what's next, we must also maintain a level of ambition to compete in the future in places where others might not think it is possible today.

### Serve smaller users
{:#serve-smaller-users}

We have large competitors and smaller ones.
The larger competitors naturally get attention because we compete with them for large customers.
According to the [innovators dilemma](https://en.wikipedia.org/wiki/The_Innovator%27s_Dilemma): "the next generation product is not being built for the incumbent's customer set and this large customer set is not interested in the new innovation and keeps demanding more innovation with the incumbent product".
So it is really important that we also focus on the needs of smaller users since the next generation product will first be used by them.
If we don't do this we risk smaller competitors gaining marketshare there and then having the community and revenue to go up-market.

We serve smaller users by having:

1. A great free open source product that [gets the majority of new features](/company/stewardship/#promises).
1. A focus on [memory consumption reduction](/handbook/engineering/development/enablement/memory/) to ensure it is affordable to run our open source version.
1. A [tiered pricing model](/company/pricing/#three-tiers) with a very low pricepoint for our lowest tier.

### Infrastructure Bundling
{:#infrastructure-bundling}

The largest cost in application delivery is typically infrastructure. Large hyper-scale infrastructure providers could bundle their own native DevOps platform usage with their infrastructure. There are a couple of industry trends which limit this risk:
1. Businesses are increasingly avoiding infrastructure vendor lock-in and pursuing multi-cloud strategies.
1. Infrastructure players have been slow to develop user friendly, complete DevOps platforms.

Also, see the [fork and commoditize](#fork-and-commoditize) move that is available to hyper-scale infrastructure providers.

## 4. Lack of performance management
{:#underperformance}

In a similar vein, it is important that we do not slow down, which means being very proactive in addressing [underperformance](/handbook/leadership/underperformance/).
We should [identify and take action as early as possible](/handbook/leadership/underperformance/#manager-identify-and-take-action-as-early-as-possible).

## 5. Loss of the open source community
{:#loss-of-the-open-source-community}

1. Keep our [promises](/company/stewardship/#promises)
1. Keep listening
1. Assign [Merge Request Coaches](/job-families/expert/merge-request-coach/)
1. Have [contributing organizations](/community/contributing-orgs/)

## 6. Key people leave
{:#key-people-leave}

GitLab's success will create growth opportunities for team members inside *and* outside of the company.

To mitigate the risk of key people leaving the company, we:
1. Invest in a [talent development program](/handbook/people-group/talent-development-program/) to increase team member engagement
1. Identify and proactively invest in team members who drive the success of our organization through our [talent assessment program](/handbook/people-group/talent-assessment/).

### Vesting
{:#vesting}

Key people may leave as they vest and achieve their economic goals.

As reflected in our compensation principles, we don't want people to stay because they feel like they have [golden handcuffs](/handbook/total-rewards/compensation/#why-we-pay-local-rates), but we do recognize the alignment that comes with options vesting. Beginning in FY22, eligible GitLab team members will be reviewed for a [refresh grant](/handbook/stock-options/#refresh-grants) once per year.

### Company size
{:#company-size}

Alternatively, early team members may leave because working at a company the size of GitLab today or the size of GitLab in a year is different than working at an early-stage startup.
Big companies are organizationally different than small startups, but there are many things about the spirit of a startup that we can maintain, notably:

* our [high ambition](#high-ambition)
* our [iteration value](/handbook/values/#iteration)
* [keeping up velocity](#loss-of-velocity)
* our [direct communication practices](/handbook/leadership/#communication-should-be-direct-not-hierarchical)

Keeping the _feel_ of a small startup, despite a growing headcount, may help retain employees who would otherwise leave.


## 7. Ineffective Management
{:#ineffective-management}

Ineffective management could lead to decreased [team member retention](/handbook/people-group/people-group-metrics/#team-member-retention) and team member [satisfaction](/company/kpis/#satisfaction), as well as make functioning difficult.

In order to address this, we:
* Maintain the minimum number of [layers](/company/team/structure/#organizational-chart) to be effective
* Train, [coach](/handbook/people-group/guidance-on-feedback/), and [publicly recognize](/handbook/communication/#say-thanks) good management
* Set goals for management success (helping managers become great managers)
* Offer targeted [support to new managers and those onboarding into a management role from outside of GitLab](/handbook/people-group/learning-and-development/manager-development/)

## 8. Loss of the values that bind us
{:#loss-of-the-values-that-bind-us}

It's easy for a culture to get diluted if a company is growing fast.
To make our [values](/handbook/values/) stronger, we:

1. Regularly add to them and update them
1. Find new ways to [reinforce our values](/handbook/values/#how-do-we-reinforce-our-values)

It's possible  that a lack of diversity, one of our values, could lead to building a product that is not inclusive.
To mitigate this, we have many DIB initiatives, including [diversity goals in leadership and throughout the company](/company/culture/inclusion/#performance-indicators) and [referral bonuses for underrepresented groups](/handbook/incentives/#add-on-bonus-for-select-underrepresented-groups).

When asked in an [interview](https://youtu.be/7kMQj4O4ZGU) on GitLab Unfiltered to elaborate on this risk, GitLab co-founder and CEO Sid Sijbrandij offered the following context.

> If you lose the values that bind a company, you lose the ability to coordinate. For example, take our [Iteration](/handbook/values/#iteration) value. If one person is iterating, and they have a minimal, ugly feature that they wish to add, while another person who came from another company insists that 'This is nowhere near finished!,' you have a conflict.
>
> It's not that one approach is better than the other. It's about aligning. You set the company up for a lot of conflict if you don't have shared values.

<figure class="video_container">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/ESgEM-6FQGY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>

## 9. Handbook Second
{:#handbook-second}

We work [Handbook First](/handbook/handbook-usage/#why-handbook-first).
As we say,
> Having a "handbook first" mentality ensures there is no duplication; the handbook is always up to date, and others are better able to contribute.

If we work handbook second, we risk losing these benefits.

To ensure we avoid this risk, we:
1. Ensure all new hires read and understand the [communication guidelines](/handbook/communication/), as part of their [onboarding](https://gitlab.com/gitlab-com/people-group/employment-templates/-/blob/main/.gitlab/issue_templates/onboarding.md)
1. Make the ability to coach team members to work handbook first a requirement for promotion to [Director or above](/company/team/structure/#director-group)
1. Explicitly ask CEO Shadows to [promote working handbook first](/handbook/ceo/shadow/#promote-communication-best-practices)
1. Empower all team members to help promote our [communication guidelines](/handbook/communication/)

<figure class="video_container">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/MOlzSj6eZ3s" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>

## 10. Loss of velocity
{:#loss-of-velocity}

Most companies start shipping more slowly as they grow.
To keep our pace, we need to:

1. Ensure we get [8 Merge Requests (MRs) per engineer per month](/handbook/engineering/development/performance-indicators/#average-mrs-development-engineers-month)
1. Have [acquired organizations](/handbook/acquisitions/) remake their functionality inside our [single application](/handbook/product/single-application/)
1. Have a [quality group](/handbook/engineering/quality/) that keeps our developer tooling efficient
1. Achieve our [category maturity targets](/handbook/product/metrics/#category-maturity-achievement)
1. Ensure each [group has non-overlapping scope](/company/team/structure/#product-groups)

We were voted [The World's Most Productive Remote Team](https://noonies.hackernoon.com/award/cjxvsz6576k8u0b40czyb7xhj) by HackerNoon.

## 11. Loss of customer centricity
{:#loss-of-customer-centricity}

As more folks work away from customers, it is easy to lose sight of whom we are serving.
We can address this by:
* [living out our customer results value](/handbook/values/#customer-results)
* product managers continuing to do [customer validation cycles](/handbook/product-development-flow/#validation-track)
* [dogfooding](/handbook/values/#dogfooding) so we experience the same pain points our customers do
* optimizing for [user experience and usability](/handbook/engineering/ux/). We manage toward improving performance for [UX KPIs](/company/kpis/#ux-department-kpis), including [SUS score](/handbook/engineering/ux/performance-indicators/#system-usability-scale-sus-score)

## 12. Remote proliferation
{:#remote-proliferation}

Remote work is a [diminishing competitive advantage](/company/culture/all-remote/vision/#diminishing-competitive-advantage) for GitLab, which is a net positive for the world but creates unique pressures to retain team members. Key people may leave as remote opportunities proliferate, impacting talent retention, recruitment, team continuity, and financial pressures related to total rewards.

GitLab team members are distinctly positioned to be [recruited](https://www.penews.com/articles/companies-search-remote-working-experts-as-the-home-becomes-the-new-office-20201001) by newly-remote and [transitioning organizations](/company/culture/all-remote/transition/). As a workaround for the acute shortage of operational talent in the remote transformation space, organizations may be inclined to prioritize hires for existing roles from GitLab and other established remote firms, justifying above-market compensation by factoring inbuilt expertise on managing a remote team. This is akin to someone who speaks multiple languages receiving more regard and compensation for the same role, with GitLab team members serving as a proverbial remote work translator.

Accelerated by the COVID-19 pandemic, more organizations are [now willing](https://www.beautiful.ai/player/-MN2DyuYlmg6Bh5JA3sn/Remote-Work-Trends) to hire remotely. While [hybrid-remote](/company/culture/all-remote/hybrid-remote/) is a suboptimal experience compared to all-remote, investment in equitible workplace experiences will narrow this gap.

At particular risk is GitLab's geographic diversity. Team members farthest from major cities may leave to achieve accelerated financial success at newly-remote organizations which utilize a different compensation philosophy.

## 13. Innovation and creativity are stifled
{:#innovation-and-creativity-are-stifled}

As the number of layers increase and middle management layers increase, innovation and creativity are stifled.
While this could be reflected in [loss of velocity](#loss-of-velocity), innovation is also about the ideas that are being brought to the table.

In addition to [keeping our hiring bar high](#lowering-the-hiring-bar), we have the benefit of our community to help bring new insights and use cases creating issues.
We can keep this momentum by continuing to value and engage with our community.
We have [Merge Request Coaches](/job-families/expert/merge-request-coach/) who help contributors to get their merge requests to meet the [contribution acceptance criteria](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#contribution-acceptance-criteria),
and [wider community contributions per release](/handbook/marketing/performance-indicators/#wider-community-merged-mrs-per-release) is [a GitLab KPI](/company/kpis/#gitlab-kpis).

## 14. Loss of great end-to-end experience
{:#loss-great-end-to-end-experience}

Due to the breadth of our product scope, and the fact that our product and engineering teams work in isolation in stages and groups, there is a risk that the end-to-end experience in the application will break down.

In order to avoid this negative outcome, we:
* Have [research team interview personas](/handbook/engineering/ux/ux-research/) to ensure a good end-to-end workflow for specific persona types - doing
* Ensure adequate [product leadership](/handbook/product/product-leadership/) that is focused across the entire product line (Growth Director, Enablement Director, Product VP) - doing

## 15. Bad, insufficient and missing data
{:#bad-insufficient-and-missing-data}

Making decisions on bad data will cause inefficiency, re-work and ultimately bad decisions. The lack of data for key parts of the business will put GitLab at a competitive disadvantage to other companies who do have similar data.

We can mitigate this risk by:
* Being honest and transparent about the quality of the data we are looking at (the Trusted Data framework is a great start)
* Resisting making decisions on incomplete or not-trusted data. Being intellectually honest that the decision is ultimately a judgement call, as the data is not complete
* Tracking down data inconsistencies, and restating old data - BUT not going back in time to post-judge previous business decisions made when data was insufficient

## 16. Confusion about the expected output
{:#confusion-about-the-expected-output}

As we add more layers of management to accommodate the new people, it's easy to become confused about what is expected of you.

To make sure this is clear we:

1. Document who is the [DRI](/handbook/people-group/directly-responsible-individuals/) on a decision.
1. Have clear [KPIs](/company/kpis/#gitlab-kpis) across the company
1. Have [Key Reviews](/handbook/key-review/)
1. Have each job family include specific [performance indicators](/handbook/hiring/job-families/#why-job-families-have-performance-indicators)
1. Have a [clear org-chart](https://comp-calculator.gitlab.net/org_chart) where [each individual reports to exactly one person](/handbook/leadership/#no-matrix-organization)
1. Have managers regularly ask team members if they understand job expectations and close any gaps in understanding.
1. Ensure that at least 90% of the population responds favorably to the Engagement Survey question "I know what is expected of me to be successful in my job."
1. Celebrate our growth in revenue when we hit $100M in ARR instead of 1000 people. We put our attention in celebrating our output instead of input, per our [results value](/handbook/values/#results).

## 17. Vulnerabilities from transparency
{:#vulnerabilities-from-transparency}

[Transparency](/handbook/values/#transparency) is a GitLab value. It is central to how we operate and our success as a company. It is important for employee recruitment and retention. It is also valued by GitLab customers, contributors, and the many folks who utilize GitLab's handbook to better their own businesses. While GitLab will continue to prioritize transparency, it must also promote "responsible" transparency as openly sharing information can have unintended consequences. To mitigate risks from irresponsible (or "[radical](/handbook/communication/top-misused-terms/#radical_transparency)") transparency, we:

1. Are clear with team members on which information cannot be public. This should be clearly captured in the [not public](/handbook/communication/confidentiality-levels/#not-public) section of the handbook
1. Execute fast and [efficiently](/handbook/values/#efficiency) to drive [results](/handbook/values/#results) and stay ahead of competitors who read our handbook. As Peter Drucker says, "Strategy is a commodity, execution is an art"
1. Educate team members on effective and responsible transparency. For example, we offer a [transparency competency](/handbook/values/#transparency-competency)

## 18. Lowering the hiring bar
{:#lowering-the-hiring-bar}

As we continue to grow our company, there is pressure on departments to meet their hiring targets.
It is better for us to miss our targets than to hire people who won't be able to perform to our standards since that takes much longer to resolve.
To ensure the people we hire make the company better, we:

1. Have a standard interview structure
1. Have a standard scoring system within a function; in other words, a "Strong Yes" should mean the same thing to every interviewer in Marketing.
1. Ensure that interviewers are scoring candidates consistently. [Some teams are actively doing this](/handbook/engineering/frontend/interview-metrics/)
1. Review the interview scores of new hires to look for trends
1. [Identify and take action on underperformance](/handbook/leadership/underperformance)
1. (make this unneeded) Have the CPO and CEO sample new hires and review [manager](/company/team/structure/#management-group), [staff engineer](/job-families/engineering/backend-engineer/), [principal product manager](/job-families/product/product-manager/) and up hires
1. Compare the external title with the new title being given
1. Conduct bar raiser interviews
1. Review cohort performance in the company (completion of onboarding tasks, bonuses, performance review, 360 feedback, performance indicators)

## 19. Ineffective onboarding
{:#ineffective-onboarding}

We are onboarding many people quickly, making it easy for things to fall behind.
Therefore we:

1. Measure the onboarding time
1. Measure the time to productivity in sales (ramp time) and engineering (time to first MR, MRs per engineer per month)
1. Make sure we work [handbook-first](/handbook/handbook-usage/#why-handbook-first), so the handbook is up to date.

## 20. Fork and commoditize
{:#fork-and-commoditize}

Since we are based on an open source product, there is the risk of fork and commoditize like what [AWS experienced with ElasticSearch](https://www.youtube.com/watch?v=G6ZupYzr_Zg).

This risk is reduced, because we're application software instead of infrastructure software.
Application software is less likely to be forked and commoditized for the following reasons:

| Dimension of software   | Application software           | Infrastructure software                       | Reason                                                               |
|:-------------------|:-------------------------------|:----------------------------------------------|:---------------------------------------------------------------------|
| Interface          | Graphical User Interface (GUI) | Application Programming Interface (API)       | A GUI is harder to commoditize than an API                           |
| Compute usage      | Drives little compute          | Drives lots of compute                        | Hyperclouds want to drive compute                                    |
| Deployment         | Multi-tenant (GitLab.com)      | Single tenant managed service (MongoDB Atlas) | Hyperclouds offer mostly managed services                            |
| Feature richness   | Lots of features               | Few features                                  | More features leads to more hard to commoditize proprietary features |
| Ecosystem activity | Lots of contributions          | Few contributions                             | Infrastructure is more complex to contribute to                      |

What we need to do is:

1. [Keep up velocity](#loss-of-velocity)
1. [Keep the open source community contributing](#loss-of-the-open-source-community)
1. [Follow our buyer-based-open-core pricing model](/company/pricing/#buyer-based-open-core)

## 21. Economic Downturn
{:#economic-downturn}

An economic downturn will likely prolong our sales cycle.
Our opportunity should still be there since GitLab saves companies money on licenses and integration effort.

In order to counter this risk, GitLab:
- Maintains a healthy amount of cash on our balance sheet
- Makes short term commitments so we can correct course easily
- Is as small as we can be, while still being able to execute our product vision
- Can slow operating expense growth to match any decline in revenue, if required

**COVID-19 and impact of a pandemic:**

As a remote first company, we have the tools and culture to work from home and be productive during this unprecedented time of COVID-19.

Here are the things we can do at GitLab counter this risk:
- Empower our team members to [take care of themselves and their family](/handbook/total-rewards/benefits/covid-19/#covid-19-medical-leave-policy) so we keep them safe
- When speaking with customers, lead with empathy and help support their transition to remote
- Be the example for how to be even more effective as a remote company

## 22. Founder Departure
{:#founder-departure}

Often startups struggle through the transition when founders leave the company, especially when those founders also serve as the CEO.

To ensure we avoid this risk we:
1. Built a highly capable [E-Group](/company/team/structure/#e-group) and [Board of Directors](/handbook/board-meetings/)
1. Actively discourage a cult of personality around our CEO
1. Have the CEO take normal vacations
1. Actively help the CEO grow with the company, including training, coaching, and feedback


## 23. More layers of middle management creating problems
{:#more-layers-of-middle-management-creating-problems}

As a company expands, you get more layers of middle management.
This can cause the following problems:
1. With growing middle management, people start focusing on being liked by others more than results because it's hard to attribute results to a specific manager.
1. When there are more middle managers, it's harder to attribute success to the right person. The manager takes the credit for success but blame gets pushed downwards.
1. There is a natural tendency to focus on underperforming team members and help them improve at the cost of focusing on your highest performers and making them more successful.
1. It's lower risk to give all team members the same increases, because you don't have to defend the logic behind it and no goal setting is needed.
1. A mistake can be more detrimental for your career than a good decision can help it, because mistakes draw more attention than success and mistakes are easier to attribute to a person.
1. The more layers of management there are, the further the distance from the average individual to the customer.

Each one of the problems above has a specific solution:
1. We address this by prioritizing [our results value in our value hierarchy](/handbook/values/#hierarchy) and by [not playing politics](/handbook/values/#playing-politics-is-counter-to-gitlab-values).
1. Drive praise downward in the organization. When something is a success, attribute that success to the DRI. It can be as easy as telling someone they did a good job.
1. Focus disproportionately on the best performers by explicitly identifying the high performance. Leaders need to judge whether investment can help bring someone up to a higher level. If an investment of time adds value to the team member, the team, and the organization, invest in the team member. A meritocracy means that we invest in folks who are performing.
1. Raises should not be spread evenly (there should be variability and dispersion).
1. Incent folks to take calculated risks. Make failure acceptable. There is a thin line between incentivizing risk and recklessness, so draw the line carefully. For example, when [team-member1 accidentally dropped our production database](/blog/2017/02/01/gitlab-dot-com-database-incident/), they were [still promoted](/blog/2017/03/17/how-is-team-member-1-doing/) because we [promote based on performance](/handbook/people-group/promotions-transfers/#creating-a-promotion-or-compensation-change-document).
1. Focus on [customer centricity](/handbook/leadership/biggest-risks/#loss-of-customer-centricity).

## 24. Technical debt ineffectively managed
{:#technical-debt-ineffectively-managed}

This is especially a problem if there are acquisitions of new technologies.
We address this for acquired technology by having [acquired organizations](/handbook/acquisitions/) remake their functionality inside our [single application](/handbook/product/single-application/).

Otherwise, we have a [clear and consistent prioritization framework across engineering](/handbook/engineering/development/principles/#prioritizing-technical-decisions) and [product](/handbook/product/product-processes/#how-we-prioritize-work) that helps ensure we are continuously making progress on the most important issues.


## 25. Enterprise product management
{:#enterprise-product-management}

While building enterprise software, we run the risk of optimizing the software for the buyer only while creating a bad experience for the end-users of the software.  This is seen in the [Concur effect](https://twitter.com/ryanfalor/status/1182647229414166528?s=12)

In order to prevent this effect, we will:
* Create and maintain [UX scorecards](/handbook/engineering/ux/ux-scorecards/) and interviews from UX
* [Validate problems and solutions before building](/handbook/product-development-flow/#validation-track)

## 26. Frankenstein product
{:#frankenstein-product}

Not following our acquisition strategy, not rebuilding what we acquire, could lead to poorly integrated acquisitions.
As we continue to grow and potentially acquire additional companies, we want to rebuild their product inside of GitLab to avoid needing to maintain different code bases and applications.
In order to manage this risk:
* Follow our [acquisition strategy](/handbook/acquisitions/#acquisition-strategy)
* For Engineering, the deciding factor is whether the senior-most technical stakeholder--who is not a founder--is on board or not. Because this person will either get the engineers on board or foment resistance.

## 27. Setting expectations incorrectly
{:#setting-expectations-incorrectly}

If we don't set targets appropriately and communicate about those expectations effectively, team members, investors, and other community members may not understand how we're performing.
Missing a super-high goal while achieving really, really high results is still something to be acknowledged and celebrated.
We need to set and communicate targets that both drive the highest possible results and also ensure constituents understand the business results and in context.

## 28. Inability to respond to technological change
{:#inability-to-respond-to-technical-change}

Our value of iteration keeps us from marrying ourselves to timelines and product features that get planned years before development.

## 29. Functional Silos
{:#functional-silos}

GitLab is a [functionally organized company](/company/team/structure/#gitlabcom-isnt-a-role).
Projects in Sales are worked on by Sales.
Projects in Marketing are worked on by Marketing.
This could lead to functional silos, which could lead to loss of efficiency, duplicative work, or miscommunication.

We mitigate functional silos by encouraging cross-functional communication and relationship-building through:
* Being [public by default](/handbook/values/#transparency), enabling all functions to have simultaneous visibility into [OKRs](/company/okrs/), [direction](/direction/), issues, and milestones within the [handbook](/handbook/).
* [Coffee chats](/company/culture/all-remote/informal-communication/#coffee-chats), including letting [Donut](/company/culture/all-remote/informal-communication/#the-donut-bot) help intro you to team members
* [Social Call](/handbook/communication/#social-call) (formerly Company / Take a Break Call)
* Getting together in-person every 9 months for our [Contribute](/events/gitlab-contribute/)
* [Contribute](/events/gitlab-contribute/) is multi-function; we try to do every in-person event as a multi-function event. An exception would be [Sales Kick Off](/handbook/sales/training/SKO/) (SKO). SKO is an anti-pattern, though some cross-functional groups are invited to SKO that support sales (product, legal and marketing, for example).

## 30. Being obsessed with metrics (vs. being data-driven)
{:#being-obsessed-with-metrics-versus-data-driven}

Collecting as much data as possible is great. But then reporting on all of that data because you have it can lead to sub-optimal results, as team members won't know what is important or what to optimize for.

[This article](https://www.cfo.com/analytics/2016/04/obsession-metrics-killing-company/) explains some of the risks of an over-obsession on metrics and reporting.

We can mitigate this risk by:
* Picking a small set of most important metrics (KPIs), based on Trusted Data, that represent our best view of how the company and a function are doing (and what they should be focused on)
* Using easily understood metrics, that are directly tied to results desired (that can't be gamed)
* Automating reporting as much as possible
* Give team members a voice in selecting KPIs

## 31. Insufficient Investment in Innovation
{:#insufficient-investment-in-innovation}

We've seen other companies struggle when they have been unwilling or unable to invest in future product innovations or disrupt current offerings to meet future demands. We mitigate this by allocating a portion of R&D budget to future innovations and exploring new opportunities through [Single-Engineer Groups](/company/team/structure/#single-engineer-groups). [Iteration](/handbook/values/#iteration) helps us to place small bets and justify future investment after seeing initial momentum.
