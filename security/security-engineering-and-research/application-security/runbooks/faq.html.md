---
layout: handbook-page-toc
title: "AppSec Frequently Asked Questions"
description: "A curated list of the most frequently asked AppSec related questions"
---

## FAQ

This is a curated list of commonly asked questions related to Application Security. If you have a question that is not answered here or in the [handbook page](https://about.gitlab.com/handbook/security/security-engineering-and-research/application-security/) please reach out to the AppSec slack channel #sec-appsec.

___


### What do I do if I accidentally opened a security MR in public ?

Check if the related confidential security issue has the label `~"security-fix-in-public"`. This label means that the security issue is [already accepted](https://about.gitlab.com/handbook/security/security-engineering-and-research/application-security/vulnerability-management.html#fixing-in-public) to be to be addressed in public, so it is ok to have this MR in public. If this is not the case then [Engage the Security Engineer On-Call](https://about.gitlab.com/handbook/security/security-operations/sirt/engaging-security-on-call.html#engage-the-security-engineer-on-call) to delete the MR and branch.

### Who can I contact if my Stable Counterpart is out of office?

In GitLab, @ mention `@gitlab-com/gl-security/appsec` and the AppSec engineer on rotation will respond. In Slack, reach out on `#sec-appsec`.

___
