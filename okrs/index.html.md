---
layout: handbook-page-toc
title: Engineering OKRs
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Here is the [standard, company-wide process for OKRs](/company/okrs/). Engineering has some small deviations from (and extensions to) this process.

## OKRs that require Product to schedule work

We sometimes have Engineering OKRs that require assistance from Product to ensure the issues are scheduled in that quarter. An example would be work to burn down our [SUS backlog](https://about.gitlab.com/handbook/engineering/ux/performance-indicators/system-usability-scale/). As our quarters use calendar months, and our product development means we [release every month on the 22nd](/handbook/engineering/releases/#timelines), there is a disconnect that means we can 'lose' development time. To start work in the first milestone of a quarter (which starts just before the fiscal quarter), we need the issues to be in [validation phase 3](/handbook/product-development-flow/#validation-phase-3-design) of the preceding milestone.

As a result, Engineering will communicate with Product **6 weeks before the start of the quarter** for any upcoming OKRs that need scheduling assistance from PMs. This is earlier than the typical company timeline for OKRs, but should not be a large proportion of Engineering OKRs in any quarter anyway.

## Ally.io for OKRs
As of 2021-05-01 the Product and Engineering Divisions are using a third-party vendor, [Ally.io](https://ally.io/), for OKRs.

1. OKR owners should author new OKRs in their corresponding Department/Sub-department/Compartment/Team in Ally.
   - In Ally, navigate to your Team by selecting **All Teams** from the lefthand side. If you do not see your team, contact your manager.
   - Verify you are in your Team and in the relevant Fiscal Quarter, and click **Add an Objective**
   - Enter the title of the Objective. Starting in FY22-Q2 in Ally, we **will not** reference the FY, Quarter, type of OKR/KR, or score in the title. These are all calculated and tracked automatically in Ally
   - Ensure that only one [DRI](https://about.gitlab.com/handbook/people-group/directly-responsible-individuals/) is assign to the OKR/KR. If there is a case of multi-ownership, it's likely that the OKR/KR can be simplified or broken down further.
   - If related to a GitLab Issue, link the GitLab Issue in the description **(More Options > Description)**. We are currently working with Ally on their [GitLab integration](https://gitlab.com/gitlab-com/ally-okr-rollout/-/issues/6).
   - Define how the **Outcome** will be measured (a numeric K/RPI with starting value and target is preferred)
   - Select how **Progress** will be tracked
   - Using the search and filters such as the time period, **Align** your OKR to one or multiple parent OKRs if applicable. Alignment needs to be configured from child up to parent.
1. Get approval from your manager
   - Once your OKRs are entered into Ally, review them with your manager in your next 1:1 to obtain feedback.
   - Once approved, the manager will comment their approval on the OKRs in Ally
1. OKR Status
   - Update the OKR **whenever you have additional information** so that the OKR in Ally represents the current status of the OKR
   - Provide your manager an update in **each weekly 1:1**

### Embed Ally OKR in Handbook
Ally has provided a feature that allows you to embed OKR views into our Handbook. This is done via a sharing option that produces an embeddable iFrame link.
This option is available for any "OKR View." For example, you might embed OKRs from the "Active period" view (current quarter) or the "Previous period" (last quarter), or you might embed granular views of Sub-Team OKRs. The embedded OKRs use a dynamic link that automatically updates each quarter without additional effort.

- In Ally, navigate to your desired department.
- Click the dropdown in the upper-left of the screen, and select the desired OKR view (for example, "Active period OKRs").
- Next to the dropdown, click the "Three Horizontal Dots" button.
- Select the "Share" option.
- Select the "Embed" tab.
- Click the "Generate Link" button.
- Optionally, expand "Customize view," and toggle one or more customization options:
  - Include/Exclude First-level children
  - Include/Exclude Owner
  - Include/Exclude Team
  - Include/Exclude KR Status
  - Include/Exclude KR other Status attributes, Progress bar & Metric
- Click "Preview" to see what your embed will look like.
- Once satisfied, copy the link. (Note that there is a "Copy Link" button.)
- Create your Handbook MR. In your location of choice, add the following iFrame code, with the copied URL replacing the text `INSERT_URL_HERE`.

``` markdown
<iframe src="INSERT_URL_HERE" class="dashboard-embed" height="1500" width="100%" style="border:none;"> </iframe>
```

- You can adjust the iFrame height. We've found that, in general, `1400` to `1500` is optimal for Engineering's structure (3 OKRs x 3 KRs).
- Preview the MR in the Review App and merge.

### Feature Requests

We are actively tracking the following important feature requests to improve our workflow efficiency.

* [Handbook embedding](https://gitlab.com/gitlab-com/ally-okr-rollout/-/issues/10)
* [GitLab Integration](https://gitlab.com/gitlab-com/ally-okr-rollout/-/issues/6)

### Guidelines

We will use the following guidelines to a clear standard and consistency.

* We drop the OKR: and KR: Prefixes. Objectives and key results are a single object in Ally so you can fluidly make someone else’s OKR, one of your KRs.
* All Ally KRs should have a link to a GitLab issue if it exists. GitLab issue should be in the Ally KR Description.
* Ally labels are used for additional information that Ally does not have a dedicated field for examples `“CultureAmp Survey Action Item”`, `“ReverseAMA Action Item”`
  * Do not use Ally labels for Team, Time periods or normal OKR attributes. Ally should already handle this.
* Don’t create a KR object if it only has one child. Just use the child as your KR instead. Only create a placeholder object if it needs to scores from aggregate 2+ other items.
* We should follow the "3x3" structure for OKRs x KRs as described in the [company OKR page](https://about.gitlab.com/company/okrs/#executives-propose-okrs-for-their-functions). The goal is to only have 3 OKRs per quarter and each OKR should only have 1 to 3 KRs.
* We use full team names (people structure) with the layer nomenclature e.g.
  * Division
  * Department
  * Sub-department
  * Team
* For scoring KRs that apply to a **rate** (for instance, [MR rate](/handbook/engineering/metrics/#merge-request-rate)), we score them as follows:
  * Take the initial rate before the quarter. For example, this is 10.
  * Take the target rate at the end of the quarter. In this example, it is 17.
  * Subtract initial rate and target rate to determine the target increase: 17 - 10 = 7.
  * Each month, take that month's rate and calculate our progress towards the target independently. For example:
      * Month 1: 12. The score is (12 - 10) / 7 = 2 / 7.
      * Month 2: 13. The score is (13 - 10) / 7 = 3 / 7.
      * Month 3: 15. The score is (15 - 10) / 7 = 5 / 7.
  * Take the score for the month, divide it by three, and add it to the total score. In the above example:
      * Month 1: 2 / 7 / 3 ~= 9.5%.
      * Month 2: 3 / 7 / 3 ~= 14%. Added to the previous month, the score is now 23.5%.
      * Month 3: 5 / 7 / 3 ~= 24%. Added to the previous months, the final score is 47.5%.

### Ally How-to Videos

* [Ally.io Software Essentials](https://learn.ally.io/ally-software-essentials) (16 mins)
* [Advanced Software Features](https://learn.ally.io/advanced-ally-software-features) (19 mins)
  * Prerequisite: We strongly recommend taking the Ally.io Software Essentials course first, in order to establish a basic understanding of how the Ally software connects to your OKRs and to your Organization.
* [Product Group Aligned OKR/KR in Ally](https://www.youtube.com/watch?v=pRl5QkvJEq8)
* [Ally x GitLab Issue Integration Overview](https://www.youtube.com/watch?v=cLgrylX8ufw)
* [Ally Projects (native checklist) in KRs](https://www.youtube.com/watch?v=rook1IygOA8)
* [Ally OKR Handbook Embedding](https://www.youtube.com/watch?v=znbTlu17vUM)

## OKR Kickoff

This process should begin no later than two weeks before the end of the preceding quarter. And kickoff should happen on or before the first day of the new quarter.

1. OKR owners should **author new OKRs** in Ally
    - Add your Key results to Ally and align them with the relevant Objectives. Valid Key results are:
    - Raising a KPI from one specific value to another
    - Building out a new KPI
    - Failing either of the first two... Completing a high-profile project with specific outcomes
    - _e.g._ `* Raise first reply-time SLA for premium from 92% to 95%`
    - Add your manager's and your direct report's handles to the _CC line_
    - _Assign_ the Objective or KR to yourself
    - Ensure it is being entered for the correct quarter
    - Align related OKRs of your manager and direct reports using the **[alignment functionality](https://help.ally.io/en/articles/2300147-okr-alignment)** in Ally.
1. Get approval **prior to the first day of the quarter** from your manager
    - Use 1:1 with CTO to review
    - For everyone else: Ask you manager to do an async review of your OKRs in Ally via Slack or email and address any changes. Alternatively, discuss in a 1:1.
1. Communicate dependencies to other divisions, departments, or teams. Encourage them to take on corollary OKRs.

## OKR Status

- Update the OKR issue **whenever you have additional information** so that the status in Ally has the current state of the OKR
- For direct reports of the CTO, expect to give an update in **each weekly 1:1**
- For individuals that do a **monthly key review meeting**, expect to give an OKR update there.

### GitLab integration issue scoring

Please be aware of these completion rules for KRs that are linked to GitLab issues with the GitLab integration:

1. Closed issues are always 100% complete.
1. Open issues with no tasks are 0% complete.
1. Open issues with tasks will update the key result percent compete based on the checked task checkboxes. For example, a linked issue with 2 out of 4 tasks checked would be 50% complete.

For example:

- [Ally KR 1](https://app.ally.io/objectives/1442569) is 50% complete and linked to [this issue](https://gitlab.com/gitlab-com/ally-okr-rollout/-/issues/17) which has 1/2 checkboxes completed.
- [Ally KR 2](https://app.ally.io/objectives/1442565?skipQuickView=true) is 69% completed based on these 4 Gitlab issues:
  - [Issue 1](https://gitlab.com/gitlab-com/ally-okr-rollout/-/issues/16) is open and 0%
  - [Issue 2](https://gitlab.com/gitlab-com/ally-okr-rollout/-/issues/19) has 7/9 checkboxes completed and adds 19.5% (25*(7/9)) to the KR progress.
  - [Issue 3](https://gitlab.com/gitlab-com/ally-okr-rollout/-/issues/18) is closed and adds 25% to the KR progress even though only 2/3 checkboxes are completed.
  - [Issue 4](https://gitlab.com/gitlab-com/ally-okr-rollout/-/issues/20) is closed and adds another 25% to the KR progress.

The Key Result percent completion will roll up to the objective equally unless the objective is manually configured for unequal KR contributions under the Progress -> Manage Contributions setting in the objective.

## OKR Retrospection

This process should begin on the first day of the subsequent quarter, and complete no later than two weeks after.

1. After the end of each quarter, OKR owners should ensure their OKR/KR(s) progress is accurate before retrospection and closing.
1. Each OKR owner should add retrospection notes in Ally when closing out their OKR/KR(s).
   1. OKR owners should retrospect as Ally comments following our retrospection [guidelines](/handbook/engineering/workflow/#retrospective) (good, bad, and try)
   1. It's recommended that OKR owners document retrospection at the OKR (parent object) to optimize the number of retrospections/roll-ups.
1. OKR owners should review with their manager in the next 1:1 and they should discuss and close the OKR/KR(s) synchronously
1. Managers can summarize their retrospections by closing each KR (child object) aligned to their OKR (parent object) and leaving a brief "Good/Bad/Try" in the Closing Note. If the OKR/KR object was unintentionally closed, adding a comment achieves the same outcome.
   1. If retrospection notes for KR(s) assigned to your direct report(s) have not been populated, please `@` mention your direct report DRI in Ally and ensure retrospection is captured in that OKR/KR object.
1. After the [OKR Restrospective Meeting](/handbook/engineering/#okr-retrospective-meeting), once all outstanding conversations have been documented & applicable action items assiged to DRI(s), the leaders of each departments will ensure closure of all department's OKR/KR(s).

### OKR Retrospective Meeting

The Chief Technology Officer and the leaders of each department meet synchonously on the second Tuesday in the month after each quarter ends to [discuss the OKRs from the previous quarter](https://docs.google.com/document/d/1OYoxv_5iD-_kHujiq_6Zh9GAY8WX2FUJ1zqWzznH8RI/edit). This is an opportunity to collaborate on cross-functional initiaties with the focus being the retrospective. Leaders will voice-over the good, bad and try items from the past quarter. The meeting will not cover the status and scores of the OKRs.
