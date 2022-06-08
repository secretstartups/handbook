---
layout: handbook-page-toc
title: "Open Source at GitLab"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## We believe in Open Source

As a company, GitLab is dedicated to open source. Not only do we believe in it, but we use it, and we give back to it. Not just through GitLab, but through contributions to other open source projects.

The purpose of this page is to document how a GitLab employee can:

- Create an open source project on behalf of GitLab
- Contribute to a third-party open source project on behalf of GitLab
- Use a third-party open source code in a GitLab's project

## Growth Strategy

As an open source project, we want to stay healthy and be open for growth, but also ready to accomodate a 10x factor of
our community. In order to achieve that, we've [outlined a strategy](growth-strategy.html) that is a collaboration between multiple departments.

## General notes
- [GitLab Code of Business Conduct and Ethics](https://ir.gitlab.com/static-files/7d8c7eb3-cb17-4d68-a607-1b7a1fa1c95)
- [PIAA](/handbook/people-group/contracts-probation-periods/#piaa-proprietary-information-and-assignment-agreement) 

## Creating an open source project

See [Creating a new project](../gitlab-repositories/#creating-a-new-project) for the instructions.

## Contributing to a third-party project on behalf of GitLab

### Contributor License Agreements (CLAs)

If you're contributing to an open source project on behalf of GitLab, you may be required to enter into a CLA. In accordance with the [Authorization Matrix Policy](https://about.gitlab.com/handbook/finance/authorization-matrix/#authorization-matrix-policy), Legal approval is required to you enter into a CLA on behalf of GitLab.

If you have the choice between a Corporate and Individual CLAs, opt for the Corporate CLA.

Follow these steps to obtain legal approval and enter into a CLA on behalf of GitLab: 

 1. Check the [Third-party CLA Tracker](https://docs.google.com/spreadsheets/d/106bLmkl6IofWN__iwnu0UwQZzdm5JvDf8qdLV_4DTh8/edit#gid=0) to verify whether there is already a CLA in place in respect of the project you want to contribute to. 
 1. If there's no CLA already in place listed in the [Third-party CLA Tracker](https://docs.google.com/spreadsheets/d/106bLmkl6IofWN__iwnu0UwQZzdm5JvDf8qdLV_4DTh8/edit#gid=0), open a new [General Legal Issue](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues/new?issuable_template=general-legal-template) in the [Legal and Compliance Project](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues).
 1. Apply the `Licensing` label to the issue.
 1. Include details of the project you are contributing to, and add the CLA for approval, either as an attachment or a hyperlink, to the issue.
 1. Legal will review the CLA, requesting additional information where necessary, and approve.
 1. If an email address and/or account is required to enter into the CLA, the `cla_managers`[at] `gitlab.com` email address should be used. Access to this Google Group can be requested and granted via the issue if required. 
 1. Once Legal have confirmed approval of the CLA in the issue, you can proceed to enter into the CLA (using the `cla_managers`[at] `gitlab.com` email if one is required) and begin contributing to the project.

We are continuing to develop our policy and workflow around CLAs on behalf of GitLab contributors. [See related issue here](https://gitlab.com/gitlab-com/marketing/community-relations/opensource-program/general/-/issues/238). For any questions in the meantime, please post to the [#legal](https://gitlab.slack.com/app_redirect?channel=C78E74A6L) Slack channel. 

### Contributing to a project on GitLab

1. Fork the repository you want to contribute to into your account
2. Follow the usual [merge request flow](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html).

In the future, we might have a single place for forks. That will allow us to track various metrics about contributions made by GitLab employees.

### Contributing to a project on GitHub

If your GitHub account's primary email is not your @gitlab.com email, you can add it as an additional address. No need to create a separate account.

1. Fork the repository you want to contribute to into your account
2. Follow the usual [pull request flow](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request-from-a-fork). 

In the future, we might have a single organization for forks. That will allow us to track various metrics about contributions made by GitLab employees.

## Using open source libraries

### Acceptable Licenses

Libraries with the following licenses are acceptable for use:

- [MIT License](https://choosealicense.com/licenses/mit/) (the MIT Expat License specifically): The MIT License requires that the license itself is included with all copies of the source. It is a permissive (non-copyleft) license as defined by the Open Source Initiative.

- [Apache 2.0 License](https://choosealicense.com/licenses/apache-2.0/): A permissive license that also provides an express grant of patent rights from contributors to users.
- [Ruby 1.8 License](https://github.com/ruby/ruby/blob/ruby_1_8_6/COPYING): Dual-licensed under either itself or the GPLv2, defer to the Ruby License itself. Acceptable because of point 3b: "You may distribute the software in object code or binary form, provided that you do at least ONE of the following: b) accompany the distribution with the machine-readable source of the software."
- [Ruby 1.9 License](https://www.ruby-lang.org/en/about/license.txt): Dual-licensed under either itself or the BSD 2-Clause License, defer to BSD 2-Clause.
- [BSD 2-Clause License](https://opensource.org/licenses/BSD-2-Clause): A permissive (non-copyleft) license as defined by the Open Source Initiative.
- [BSD 3-Clause License](https://opensource.org/licenses/BSD-3-Clause) (also known as New BSD or Modified BSD): A permissive (non-copyleft) license as defined by the Open Source Initiative
- [ISC License](https://opensource.org/licenses/ISC) (also known as the OpenBSD License): A permissive (non-copyleft) license as defined by the Open Source Initiative.
- [Creative Commons Zero (CC0)](https://creativecommons.org/publicdomain/zero/1.0/): A public domain dedication, recommended as a way to disclaim copyright on your work to the maximum extent possible.
- [Unlicense](https://unlicense.org): Another public domain dedication.
- [OWFa 1.0](http://www.openwebfoundation.org/legal/the-owf-1-0-agreements/owfa-1-0): An open-source license and patent grant designed for specifications.
- [JSON License](https://www.json.org/license.html): Equivalent to the MIT license plus the statement, "The Software shall be used for Good, not Evil."

### Potentially Acceptable Licenses

These licenses may or may not be acceptable based on the usage and integration.  Review with the legal team to confirm.

- [Mozilla MPL v2](https://www.mozilla.org/en-US/MPL/2.0/) : This is a copyleft license.  It is more permissive than GPL, however it imposes specific requirements on the treatment of the licensed code. Specifically, the MPL requires that where MPL-licensed code (and any modifications to such code) is combined with other code, the MPL-licensed code and modifications must be distributed in a separate directory from the other code and the MPL applied.

### Unacceptable Licenses

Libraries with the following licenses require legal approval for use:

- [GNU GPL](https://choosealicense.com/licenses/gpl-3.0/) (version 1, [version 2](http://www.gnu.org/licenses/gpl-2.0.txt), [version 3](http://www.gnu.org/licenses/gpl-3.0.txt), or any future versions): GPL-licensed libraries cannot be linked to from non-GPL projects.
- [GNU AGPLv3](https://choosealicense.com/licenses/agpl-3.0/): AGPL-licensed libraries cannot be linked to from non-GPL projects.
- [Open Software License (OSL)](https://opensource.org/licenses/OSL-3.0): is a copyleft license. In addition, the FSF [recommend against its use](https://www.gnu.org/licenses/license-list.en.html#OSL).
- [GNU Lesser General Public License (GNU LGPL)](https://choosealicense.com/licenses/lgpl-3.0/) (version 2, version 3): GPL constraints regarding modification and redistribution under the same license are not required of projects using an LGPL library, only upon modification of the LGPL-licensed library itself.

### Requesting Approval for Licenses or any other Intellectual Property

Libraries that are not already approved and listed on the [Acceptable Licenses](#acceptable-licenses) list or that may be listed on the [Unacceptable Licenses](#unacceptable-licenses) list may be submitted to the legal team for review and use on a case-by-case basis. Please contact Legal by following the [instructions](https://about.gitlab.com/handbook/legal/#5-other-legal-requests) in the Legal Handbook to request review. Include the details of how the software will be used, whether or not it will be modified, and how it will be distributed (if at all). After a decision has been made, the original requestor is responsible for updating this document, if applicable. Not all approvals will be approved for universal use and may continue to remain on the Unacceptable License list.

All inquiries relating to patents should be directed to the Legal team.

### Notes

Decisions regarding the GNU GPL licenses are based on information provided by [The GNU Project](http://www.gnu.org/licenses/gpl-faq.html#IfLibraryIsGPL), as well as [the Open Source Initiative](https://opensource.org/faq#linking-proprietary-code), which both state that linking GPL libraries makes the program itself GPL.

If a library uses a license which is not listed above, open an issue and ask. If a license is not included in the "acceptable" list, operate under the assumption that it is not acceptable.

Keep in mind that each license has its own restrictions (typically defined in their body text). Please make sure to comply with those restrictions at all times whenever an external library is used.

Dependencies which are only used in development or test environment are exempt from license requirements, as they're not distributed for use in production.

**NOTE:** This document is **not** legal advice, nor is it comprehensive. It should not be taken as such.

### Using forks in your code

Avoid using forked code and try to contribute your change upstream.

It's typical for forks to fall far behind the upstream repository and such dependencies become a source of pain:
- Rebasing the branch may become non-trivial and it'd become hard to bring such dependency up to date. 
- Some other library in your project might depend on the original version, creating a [diamond dependency problem](https://en.wikipedia.org/wiki/Dependency_hell).

There may be good reasons to create a fork:
- To fix a security issue that is not being fixed upstream fast enough if it's affecting us or our customers
- Any other reasons? Talk to your peers and use your best judgement.
 
If you decide to create a fork, make sure you open an issue that:
- Describes the reason for the fork to exist
- Links to the MR(s) where the fork was introduced as a dependency
- Links to any relevant issues in the upstream project. If the issue was not reported already, make sure you report it in the project's issue tracker. This is important because if the project's maintainers don't know about it they will not fix it
- Links to any opened MRs/PRs to fix the issue upstream 
- Describes the remediation work needed to start using the upstream code again
- If it's not just changes in the forked code, but also some modifications in your code to use the fork, consider putting a TODO and a link to this issue next to that code in a comment

## GPL Cooperation Commitment

Before filing or continuing to prosecute any legal proceeding or claim (other than a Defensive Action) arising from termination of a Covered License, GitLab commits to extend to the person or entity (“you”) accused of violating the Covered License the following provisions regarding cure and reinstatement, taken from GPL version 3. As used here, the term ‘this License’ refers to the specific Covered License being enforced.

However, if you cease all violation of this License, then your license from a particular copyright holder is reinstated (a) provisionally, unless and until the copyright holder explicitly and finally terminates your license, and (b) permanently, if the copyright holder fails to notify you of the violation by some reasonable means prior to 60 days after the cessation.

Moreover, your license from a particular copyright holder is reinstated permanently if the copyright holder notifies you of the violation by some reasonable means, this is the first time you have received notice of violation of this License (for any work) from that copyright holder, and you cure the violation prior to 30 days after your receipt of the notice.

GitLab intends this Commitment to be irrevocable, and binding and enforceable against GitLab and assignees of or successors to GitLab’s copyrights.

GitLab may modify this Commitment by publishing a new edition on this page or a successor location.

Definitions

‘Covered License’ means the GNU General Public License, version 2 (GPLv2), the GNU Lesser General Public License, version 2.1 (LGPLv2.1), or the GNU Library General Public License, version 2 (LGPLv2), all as published by the Free Software Foundation.

‘Defensive Action’ means a legal proceeding or claim that GitLab brings against you in response to a prior proceeding or claim initiated by you or your affiliate.

GitLab means GitLab Inc. and its affiliates and subsidiaries.
