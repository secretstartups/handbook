---
layout: handbook-page-toc
title: "Application Security Stable Counterparts"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Stable Counterparts

The overall goal of Application Security Stable Counterparts is to help
integrate security themes early in the development process. This is intending
to reduce the number of vulnerabilities released over the long term.  
These Stable Counterparts can be found on the 
[Product Categories page](/handbook/product/categories/#devops-stages), 
next to the "Application Security Engineer" mentions.

### Technical Goals
- Assist in threat modeling features to identify areas of risk prior to
  implementation
- Code and [AppSec reviews](/handbook/security/security-engineering-and-research/application-security/appsec-reviews.html)
- Provide guidance on security best practices
- Improve security testing coverage
- Assistance in prioritizing security fixes
- Provide technical guidance on security fixes

### Non-technical Goals
- Enable development team to self-identify security risk early
- Help document and solve pain points when it comes to security process
- Identify vulnerability areas to target for training and/or automation
- Assist in cross-team communication of security-related topics
- Assist development teams with security related compliance and regulatory audits

### Success Stories

There are cases where the Application Security team isn't involved as at the level that the 
security team would like to, and many factors can lead to that situation. In cases where one 
is the Stable Counterpart it can be even more difficult to stay up to date on what is happening 
on each group.

One change in how to approach that for some team members was to **setup bi-weekly sync meetings 
with a member of the engineer team and discuss security releated topics**. This has started to 
work on the first meeting and enabled the Application Security to cover important issues that would 
not necessarily be seen without this change.

On other cases setting up **regular meetings with a dedicated engineer on a very specific topic** 
may also help in staying up to date. In doing that we were able to review issues on 
new important planned features. 

### Adding & Updating Stable Counterparts

Stable Counterparts can be added or updated by following these steps:

- (Optional) Organise a 1:1 with the group(s) and App Sec engineer(s) involved to discuss handover, learning opportunities, upcoming priorities, and practicalities like links to GitLab Issue Boards and meeting invitations
- Open an MR to [gitlab-com/www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/)
    - Add or update `data/stages.yml`, setting the `appsec_engineer` attribute to `Firstname Lastname` in each group
    - For each App Sec Engineer involved, update the `role` attribute in `data/team_members/person/LETTER/PERSON_NAME.yml` to include `STAGE_NAME (GROUP_A, GROUP_B)`

