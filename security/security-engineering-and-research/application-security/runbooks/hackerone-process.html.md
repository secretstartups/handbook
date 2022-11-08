---
layout: handbook-page-toc
title: "HackerOne Process"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### HackerOne Process

GitLab utilizes [HackerOne](https://hackerone.com/gitlab) for its bug bounty program. Security researchers can report vulnerabilities in GitLab applications or the GitLab infrastructure via the HackerOne website. Team members authorized to respond to HackerOne reports use procedures outlined here.
The `#hackerone-feed` Slack channel receives notifications of report status changes and comments via HackerOne's Slack integration.

#### Queues

- `New` contains all reports in the New state
- `GitLab Team` contains reports that have been validated by the HackerOne triage team, but are yet to be assigned to a specific GitLab team member
- `H1 Triage` are reports being triaged by the HackerOne triage team
- `Pending Disclosure` are reports that should be reviewed and disclosed

#### GitLab Team On-boarding

- New members of the GitLab security team are granted access to the GitLab HackerOne team via an access request issue using the appropriate [role based entitlement template](https://about.gitlab.com/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/baseline-entitlements/#role-entitlements-for-a-specific-job), which should be submitted by their manager during onboarding
- During onboarding, new GitLab security team members will be invited to join the HackerOne program if their role requires it.

#### Working the Queue

##### HackerOne Triage Team

GitLab's bug bounty program is managed by HackerOne. The HackerOne triage team are the first responders, and will work with researchers to validate reports before assigning to `GitLab Team`.

We usually trust the HackerOne Triage Team and don't necessarily validate the report a second time. There are however cases when the GitLab team member on rotation may want to re-validate it, for example (non exhaustive list):
- There may be additional impact that require more investigation
- The severity can't be properly assessed without further investigation

##### GitLab Team

- When beginning work on a report, the security team member should assign the
report to themselves immediately.
- It is OK to take a report that you will not work on immediately, especially
if it is a duplicate or related to another report you are familiar with, just
be sure to get it reassigned if you won't be able to meet the estimated triage time.
- When starting a triage work cycle, team members should prioritize as follows:
  1. Identify, triage, and [escalate any New severity::1/priority::1](./handling-s1p1.html) issues first, from any queue.
  1. Close duplicate and invalid reports.
  1. Triage further using Sort by "Oldest" reports.
  1. Triage the `GitLab Team` queue.

  If a reporter has questions about the order of report responses, `06 - Duplicates/Invalid Reports Triaged First` common response may be used.
- Review the validation performed by the HackerOne triage team
- Communicate with the reporter and investigate, using the
following guidelines as necessary:
    - [Request clarification](#if-a-report-is-unclear), from either the reporter or the triage team
    - Verify the report yourself
- When a report contains externally-hosted static content for reproduction (for example some HTML file triggering a CSRF or a vulnerability exploiting a `postMessage` issue), follow the instructions in [this project](https://gitlab.com/gitlab-com/gl-security/appsec/vuln-repro-static-pages) to re-host it internally
- Potential, non-bounty outcomes:
    - Report is out-of-scope. If actionable, issues may still be created, but
    further process may not be followed see [violating the rules](#if-a-report-violates-the-rules-of-engagement).
    - Report is a `~"type::feature"` as defined above and would not need to be
    made confidential or scheduled for remediation. An issue can be created, or
    requested that the reporter creates one if desired, but the report can be
    closed as "Informative".
    - Report is otherwise [Informative, Not Applicable, or Spam](#closing-reports-as-informative-not-applicable-or-spam).
    For example, we've gotten a number of reports for [inline HTML in markdown](https://docs.gitlab.com/ee/user/markdown.html#inline-html)
    that do not exceed the capabilities of markdown itself.
    - Report is a duplicate. Verify that the issue was not previously reported in HackerOne, or
    that an issue does not already exist in GitLab. If it is a duplicate:
        - Change the state of the report to "Duplicate".
        - If the issue was previously reported in H1, include the report id, as it can
        impact the reporter's reputation
        - Fill in the `01 - Duplicate` common response. Include the link to the GitLab issue.
        - The team member may use their discretion if the reporter asks to be added as a contributor to the original H1 report;
        however, the default is to not add because the corresponding GitLab issue will
        be made public 30 days after the patch is released. If it is decided to add the
        duplicate reporter, ensure that the report does not have reporter sensitive information before allowing access.
        `05 - Duplicate Follow Up, No Adding Contributors/Future Public Release` common response
        can be used when denying the request to add as a contributor.
        - If the new report makes us realize we have mishandled a previous report (e.g. closed as informative but it was a valid bug) we reopen the original and award the new report a bounty to thank the reporter for putting the mishandled issue back on our radar
          - The bounty we award as a thank you should be $100 for low severity reports and equivalent to the initial bounty we pay on triage for the higher severities
          - If we realize our mistake late in the process and we have already rewarded the new report, the bounty should be raised to the amounts above or left as is if it's already higher
          - The author of the duplicate report should also be thanked in the CVE credits and blog post
          - If the new report demonstrates new and higher impact, we calculate the CVSS score and award to the new reporter the difference between the new severity and what was awarded to the original report 
- If the report is valid, in-scope, original, and requires action, security-related documentation change, or if the report needs further investigation by
the responsible engineering team:
    - [Calculate the CVSS score](https://gitlab-com.gitlab.io/gl-security/appsec/cvss-calculator/) and post the resulting vector string (e.g.: `AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:L`) as an internal comment on the report, this will be used later when requesting a CVE ID
    - Verify and/or set the appropriate Severity in H1, using the CVSS previously calculated
      + Optionally explain the CVSS to the researcher, mention that CVSS scores are validated by a peer, and link to our Awards process to avoid inefficient misunderstandings relating to severity and payouts
    - Verify and/or set the appropriate Weakness in H1
    - If the report is [permissions related](https://docs.gitlab.com/ee/development/secure_coding_guidelines.html#permissions), check for similar issues in the API, GraphQL, and Elasticsearch, as appropriate. Also check with alternate authentication mechanisms like Deploy Tokens, Deploy Keys, Trigger Tokens, etc.
    - Add your initial [suggested bounty](https://docs.hackerone.com/programs/bounties.html#suggesting-bounties) in H1
    - Import the report into a GitLab issue using `/h1 import <report> [project] [options]` in Slack
        - Note: by default a placeholder [CVE issue](https://gitlab.com/gitlab-org/cves/-/issues) is created and a brief note is added to the latest [bug bounty council issue](https://gitlab.com/gitlab-com/gl-security/security-department-meta/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Bug%20Bounty%20Council). Pass `~no-cve` or `~no-bounty` respectively to the `/h1 import` command to prevent their creation.
    - On the imported GitLab issue:
        - Verify the Severity/Priority assigned by `h1import` ([Severity and Priority](/handbook/security/#severity-and-priority-labels-on-security-issues))
        - Assign the appropriate [Due Date](/handbook/security/#due-date-on-security-issues)
        - Have a proper [`How to reproduce`](/handbook/security/#reproducibility-on-security-issues) section
        - If the report is a security-related documentation change, add the `~documentation` label
        - @-mention the product manager and engineering manager based on the [product categories page](/handbook/product/categories/). Ask for engineering feedback if it is required to complete the triage
        - add labels (`/label ~` command) corresponding to the [DevOps stage](/handbook/product/categories/#devops-stages) and source group (consult the [Hierarchy](/handbook/product/categories/#hierarchy) for an overview on categories forming the hierarchy)
        - As applicable, notify other relevant team members via the issue, chat, and email, depending on the chosen security level.
    - Change the state of the report to "Triaged" in HackerOne:
        - See [GitLab's H1 Policy](https://hackerone.com/gitlab), under `Rewards`, for portions of bounty rewards which are awarded at the time of triage
        - Choose from the following common responses:
          - `00 - Triaged pending further investigation` for reports where the severity or validity is uncertain, and we are discussing with the engineering team.
          - `00 - Triaged` for low severity reports, which do not have an initial bounty at the time of triage
          - `00 - Triaged with Bounty` for medium, high, and critical reports which do have an initial bounty at time of triage
        - In the comment, include link to the confidential issue
    - Update the CVE issue and Bug Bounty Council note with relevant details, while they are still fresh in your mind
    - If you relied on the HackerOne Triage Team's validation of the issue, consider setting time in your calendar to validate it yourself. This will help if you need to validate the fix later.
    - If full impact is needed to be assessed against GitLab infrastructure, instead of testing in https://gitlab.com, use https://staging.gitlab.com/help to sign in with your GitLab email account
        - If multiple users are needed, use credentials for users gitlab-qa-user* stored in 1password Team Vault to access the staging environment
- Remember to review the `Pending Disclosure` tab and follow [our disclosure process](#closing-out--disclosing-issues)

#### Awards

- See [GitLab's H1 Policy](https://hackerone.com/gitlab), under `Rewards`, for portions of bounty rewards which are awarded at the time of triage
  + It is OK to delay awarding at time of triage. Examples are when we aren't sure if a report is intended behaviour, or if it will be a documentation change. Remember to return and make a partial award if/when appropriate.
  + It is OK to have awarded a partial bounty at time of triage and later learn we have overpaid due to an adjustment of validity or severity
- If the report does not already have a council issue, use the `/h1 bounty <report>` Slack bot to post a note on the current [~"bug bounty council"](https://gitlab.com/gitlab-com/gl-security/security-department-meta/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Bug%20Bounty%20Council) issue
  + Add descriptions, similar issues, and other commentary as appropriate
- Award approval:
  + For documentation updates, an award can be paid immediately
  + For Low and Medium CVSS, an award can be paid after at least one team member reacts with a thumbsup emoji
  + For High and Critical CVSS, two team members must react with a thumbsup emoji on the note
  + If needed, make a request in `#sec-appsec` when your note has not received enough votes
- After Bug Bounty Council approval:
  + If 30 days have passed since the issue was triaged, the approved award may be paid in advance of a confirmed fix using the `04 - Bounty Award / Reviewed and Awarded Prior to Fix` common response.
  + Once a fix is shipped, award the remaining amount (or full amount if none was awarded at time of triage) using the `02 - Bounty Award` common response

We can award GitLab swag to reporters who have submitted a quality report that did not qualify for a monetary reward in our Bug Bounty program. To award swag, please follow the [swag nomination process](/handbook/marketing/community-relations/code-contributor-program/community-appreciation/#nomination-process) that is managed by our Community Relations team.

#### Managing issues

Discussion and remediation of vulnerabilities can sometimes take longer than we would prefer. Even so, frequent communication with reporters is far better than leaving reporters in the dark, even if our progress is slow. Therefore:

- Once the corresponding GitLab issue has been assigned a milestone, an
automated process will add a comment to the H1 report with the planned
fix date. If the issue has not been assigned to a milestone within **1 week**
of the product manager being @ mentioned on the issue, follow up with
the product management team.
- In the case where fixes are not as clear or discussion is still
on-going as to whether a patch will be created at all, reporters should
be notified of updates at least **monthly**.
- In any case, no report should go "stale" where updates are not provided within the last month.

#### Closing out & disclosing issues

When a patch is released and the award process complete, it is time to close the HackerOne issue.

After 30 days, follow the [process for disclosing security issues](https://about.gitlab.com/handbook/security/#process-for-disclosing-security-issues). 
Once this has occurred, the HackerOne issue can also be publicly disclosed on 
a case-by-case basis, following the same process to remove sensitive information. 
We should not disclose, or request to disclose, a HackerOne issue while the GitLab issue
 remains confidential.

Comments made by GitLab Security Bot (`@gitlab-securitybot`) can be redacted by AppSec or SecAuto team members using the `/h1 redact <comment_url>` Slack command.

We typically request to disclose reports which are unique and 
interesting, and which will help other researchers learn more about quality reporting. 
If a researcher requests public disclosure, regardless of quality, we should 
agree to disclose it (after 30 days) unless there is a good reason not to.


#### Application Security Engineer Procedures for severity::1/priority::1 Issues

Please see [Handling severity::1/priority::1 Issues](./handling-s1p1.html)

#### Closing reports as Informative, Not Applicable, or Spam

If the report does not pose a security risk to GitLab or GitLab users it can be closed without opening an issue on GitLab.com.

When this happens inform the researcher why it is not a vulnerability. It is up to the discretion of the Security Engineer whether to close the report as "Informative", "Not Applicable", or "Spam". HackerOne offers the following guidelines on each of these statuses:

- Informative: Report contained useful information but did not warrant an immediate action.
- Not Applicable: Report was invalid, ineligible, or irrelevant.
- Spam: Report is not a legitimate attempt to describe a security issue.

We mostly use the "Informative" status for reports with little to no security impact to GitLab and "Not Applicable" for reports that show a poor understanding of security concepts or reports that are clearly out of scope. "Spam" results in the maximum penalty to the researcher's reputation and should only be used in obvious cases of abuse.

#### If a Report is Unclear

If a report is unclear, or the reviewer has any questions about the validity of the finding or how it can be exploited, now is the time to ask. Move the report to the "Needs More Info" state until the researcher has provided all the information necessary to determine the validity and impact of the finding. Use your best judgement to determine whether it makes sense to open a confidential issue anyway, noting in it that you are seeking more information from the reporter. When in doubt, err on the side of opening the issue.

One the report has been clarified, follow the "regular flow" described above.

#### If a Report Violates the Rules of Engagement

If a report violates the rules of GitLab's bug bounty program use good judgement in deciding how to proceed. For instance, if a researcher has tested a vulnerability against GitLab production systems (a violation), but the vulnerability has not placed GitLab user data at risk, notify them that they have violated the terms of the bounty program but you are still taking the report seriously and will treat it normally. If the researcher has acted in a dangerous or malicious way, inform them that they have violated the terms of the bug bounty program and will not receive credit. Then continue with the "regular flow" as you normally would.

#### Breakdown of Effective Communication

Sometimes there will be a breakdown in effective communication with a reporter. While this could happen for multiple reasons, it is important that further communication follows [GitLab's Guidelines for Effective and Responsible Communication](/handbook/communication/#effective--responsible-communication-guidelines). If communication with a reporter has gotten to this point, the following steps should be taken to help meet this goal.

- Take a step back from the situation. Do not respond immediately.
- Seek advice from the H1 triage engineer or, if you are more comfortable, a manager on how best to move forward.
- Consider writing the response multiple times, and have the response reviewed by the person you consulted.
- Once diffused, if the general situation is not currently documented, open an MR to the handbook on how it can be handled in the future.

Where appropriate, follow HackerOne's "See something, say something" policy as described in their [Code of Conduct](https://www.hackerone.com/policies/code-of-conduct). Use a "Team Only" comment on this issue in question and `@` mention the HackerOne triager, email `support@hackerone.com`, or ask an AppSec team member to reach out direct via the HackerOne Customer Slack.

#### Reports potentially affecting third parties

When GitLab receives reports, via HackerOne or other means, which might affect third parties the reporter will be encouraged to report the vulnerabilities upstream. On a case-by-case basis, e.g. for urgent or critical issues, GitLab might proactively report security issues upstream while being transparent to the reporter and making sure the original reporter will be credited. GitLab team members however will not attempt to re-apply unique techniques observed from bug bounty related submissions towards unrelated third parties which might be affected.

#### Awarding Ultimate Licenses

GitLab reporters with 3 or more valid reports are eligible for a 1-year Ultimate license for up to 5 users. As per the [H1 policy](https://gitlab.com/gitlab-com/gl-security/hackerone/configuration/-/blob/master/program-policy.md#gitlab-ultimate-license), reporters will request the license through a comment on one of their issues. When a reporter has requested a license, the following steps should be taken:

1. Validate that the three reports were valid. That means they are `Triaged` or `Resolved`.
1. Validate that the three reports have not been used to obtain a previous license.
1. If the reports are not valid, respond to the reporter on H1 explaining the reason the license is not being issued.
1. If the reports are valid, visit the [GitLab Support Internal Requests page](https://gitlab-com.gitlab.io/support/internal-requests-form/) and select `Hacker One Reporter License` as the request type.
    - For `Contact Name` use the reporter's full name if available, otherwise their H1 handle
    - For `Contact Email` use the reporter's `[username]@wearehackerone.com` email address
1. Enter the associated license information in the [H1 License Award sheet](https://docs.google.com/spreadsheets/d/1qJZ9jfIvQuSU5u4odj4Db_CRKJ_GHegtSZQvJx36FUE/edit)
1. Reply to the report on H1 use the `20 - Ultimate License Creation` template.

The license will be sent to the reporter by CustomersDot. If the reporter claims that the license has not arrived, the app can be used to resend the license.
When that happens, the creation of a new license should be avoided.

#### Questions?

Members of the public can ask questions about our HackerOne bug bounty program here: [https://gitlab.com/gitlab-com/gl-security/appsec/hackerone-questions/](https://gitlab.com/gitlab-com/gl-security/appsec/hackerone-questions/). Note that this repository **is not** the place to discuss or disclose reports and vulnerabilities.

### HackerOne Triage Team GitLab licenses

All members of the HackerOne triage team have access to GitLab Ultimate licenses. HackerOne will inform us annually when the license needs to be renewed. 

- Visit the [GitLab Support Internal Requests page](https://gitlab-com.gitlab.io/support/internal-requests-form/)
- Select the `Other` template
- Paste the following:

```
Two new licenses are needed for our HackerOne Triage+ team. This team helps us triage HackerOne reports and will need at least two licenses with 50 users each. They need ultimate licenses to validate reports affecting any feature of the product.

License 1: `analysts@managed.hackerone.com`

License 2: `analysts+1@managed.hackerone.com`

Company: HackerOne Inc.

License type: Ultimate

Number of users for each license: 50

License duration: 1 year
```
