---
layout: handbook-page-toc
title: Release Certification
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Process for Release Certification

Every release with JiHu contributions needs to be certified by a member of the
[Federal Application Security team](/handbook/engineering/security/security-engineering-and-research/application-security/index.html).
This is required to satisfy PubSec/FedRamp requirements and
to handle JiHu's merge request contributions to GitLab Inc repositories.

This process involves ensuring that each JiHu contribution included in the release has been
[reviewed and approved by an Application Security team member](./jihu-contribution-review-process.html)
and posting a comment on the [relevant release task issue](https://gitlab.com/gitlab-org/release/tasks/issues)
that no new vulnerabilities have been identified in the code being released.

### Who can certify a release

As per PubSec/FedRamp requirements, only United States citizens on United States soil are eligible to certify a release.
This means that only members of the Federal AppSec team are eligible to perform the certification of the release.
Note that *any* member of the Application Security team may review and approve a JiHu contribution,
but only Federal AppSec team members can certify the release.

Members of the Federal AppSec team will use the
[AppSec Rotation spreadsheet](https://docs.google.com/spreadsheets/d/18vz84dgTfetTaBjbOCXaLKNfzLYMiy_tBW6RfEUYYHk/edit#gid=0)
to sign up to be responsible for certifying monthly releases. These assignments will also need to be reflected on the
[Release Managers page](https://about.gitlab.com/community/release-managers/), under the AppSec Release Certification column.

### Certification process

The certification process can only begin once it is completely certain that
no new JiHu contributions will be included in the release. The recommended time to begin is during the
`21st: one day before the release` section of the release task, which specifies that `no new code can be added to the release`.

Once it is certain that no new JiHu contributions will be added, follow the steps below:

1. Run the [release certification tools script](https://gitlab.com/gitlab-com/gl-security/appsec/tooling/release-certification-tools), following the directions in the `README.md`. This will create an issue in the [jh-upstream-report issue tracker](https://gitlab.com/gitlab-org/jh-upstream-report/-/issues) with a checklist containing each JiHu contribution associated with the upcoming release.
1. Verify that every JiHu contribution going into the release is on this list. This can be done by looking at the [status report](https://gitlab.com/gitlab-jh/status-reports/-/issues) repository information in addition to searching for the `JiHu Contribution` labels in [each repository](/handbook/ceo/chief-of-staff-team/jihu-support/#projects) (the certification issue should have a link available). Be sure to look for both open and closed merge requests. The most likely reason a MR would be in the release but not in the checklist is the appropriate milestone had not been set for it.
1. For each JiHu contribution on the checklist:
    * Look at the merge request and verify that an AppSec reviewer has indicated it has been reviewed and is acceptable
    * Time allowing, briefly review the changes to re-confirm they are acceptable
    * Comment on the merge request indicating that it will be included as part of the certified release, mentioning the version number
    * Link the merge request to the release certification issue
    * Mark the corresponding checkbox in the release certification issue to indicate the MR has been confirmed acceptable
1. When absolutely sure that all JiHu contributions in the release have been reviewed by an AppSec team member:
    * Copy and paste the boilerplate comment generated at the bottom of the release certification issue into a comment on the release task issue
    * Make a comment on the release certification issue indicating that the process is complete and linking to the certification comment made on the release task issue
    * Close the release certification issue

### Contributions that introduce vulnerabilities

If a potential S1 or S2 vulnerability is identified in any of the contributions:

1. Comment on the release certification issue with a link to the MR and a description of the vulnerability
1. Post a message in the `#sec-appsec` Slack channel with a link to the comment
1. Ping the appropriate [release manager](https://about.gitlab.com/community/release-managers/) from the delivery team and work with them to remove the MRs from the release
    * If the vulnerable code is removed, continue with the certification process
    * If the vulnerable code cannot be removed, follow the `When a release cannot be certified` steps listed below

### When a release cannot be certified

In some rare situations, a member of the Federal AppSec team may choose **not** to certify a release. This may happen because a known vulnerability is included in the release and it cannot be removed or other situations including (more examples TBD)

In the event that the release cannot be certified:

1. Write a comment on the release certification issue briefly explaining the reasoning behind choosing not to certify release
1. Ping security leadership (`@JohnathanHunt` and `@laurence.bierner`) on the release certification issue in a reply to the comment made above
1. Announce in the `#sec-appsec` Slack channel that the release cannot be certified and link to the release certification issue
