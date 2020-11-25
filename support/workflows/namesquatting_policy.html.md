---
layout: handbook-page-toc
title: Name Squatting Policy
description: "Workflow for releasing a namespace deemed dormant by GitLab's Name-squatting Policy"
category: GitLab.com
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

As per the [statement of support](/support/#name-squatting-policy), namespaces may be released when they meet the appropriate criteria.

**NOTE:** When applying any of the macros ensure to replace the placeholder **“REQUESTEDNAME”** with the namespace requested.

### Workflow

1. Search for the requested namespace in GitLab.com admin: [users](https://gitlab.com/admin/users) or [groups](https://gitlab.com/admin/groups), once found visit the GitLab admin page for the namespace.
1. Apply the **GitLab.com::Name Squatting Policy::Internal Checklist** macro in Zendesk.
1. Answer all questions in the **Internal Checklist** (Yes/No) ensuring to cross-check the information found in the admin section.
1. If the namespace is eligible for immediate release, follow [Request successful](#request-successful).
1. If the namespace is eligible for release, follow [Namespace is available](#namespace-is-available).
1. If the namespace is not eligible for release, follow: [Namespace is not available](#namespace-is-not-available).

### Namespace is available

Contact Owner:

1. Create a **new Zendesk ticket** with the **namespace owner's email address** (found in admin).
1. Set the form of the new ticket to **Gitlab.com (SAAS) Account Related Form**.
1. Apply the **GitLab.com::Name Squatting Policy::Contact Namespace Owner** macro and mark the ticket as **On-hold**.
1. Make an internal comment providing a link to the **namespace requesters ticket**.

Requester's Ticket:

1. Copy the ticket's link and add it to the **Internal Checklist**.
1. Reply to the requester with the **GitLab.com::Name Squatting Policy::First Response** macro and mark ticket as **On-hold**.

#### Namespace owner responded

If the namespace owner makes a response (don’t remove my namespace) follow these steps:

1. Apply the **GitLab.com::Name Squatting Policy::Cancel Request** Macro to the **namespace owners response**.
1. Apply the **GitLab.com::Name Squatting Policy::Failed Namespace Request** to the **namespace requesters ticket**.

#### Namespace owner has not responded

If after one week and there has been no response, apply the **GitLab.com::Name Squatting Policy::Contact Namespace Owner** macro a second time and mark the ticket as **On-hold**.

After two weeks, the ticket will be **automatically marked as open and an email sent to the assigned engineer**.

If the namespace owner makes no response, follow the [Request successful](#request-successful) steps.

### Request successful

If the request is successful, follow these steps:

In admin, rename the owner's namespace:

1. Navigate to the namespace in admin - [users](https://gitlab.com/admin/users) or [groups](https://gitlab.com/admin/groups)
1. Select “Edit” on the profile.
1. Append “_idle” to the namespace.
1. Save changes.

In Zendesk:

1. Apply the **GitLab.com::Name Squatting Policy::Successful Namespace Request** macro to the **Namespace requesters ticket** and mark the ticket as **Solved**.

### Namespace is not available

1. Apply **GitLab.com::Name Squatting Policy::Failed Namespace Request** macro and mark ticket as **Solved**.

### FAQs

1. **Does a login in response to a name squatting request mean that the account is active?** 
   
   No, the user has to explicitly reply to the name squatting request saying "I want to keep my namespace". If the user hasn't responded and has just logged in, send a final message saying something like, "I see you logged in at X, but you need to let us know here if you want to keep your namespace".
1. **What constitutes data in the account?** 

   A group, a project, etc. means data. Unless the project or group is empty, or there's been no activity for 2 or more years.
2. **Is namespace squatting permitted?**

   Namespace squatting is not permitted as explicitly stated in our [terms](https://about.gitlab.com/terms/). User and group names are provided on a first-come, first-served basis and may not be reserved. 
3. **Does using a trademark in a way that has nothing to do with the product or service for which the trademark was granted considered a violation of trademark policy?**

   Using another's trademark in a way that has nothing to do with the product or service for which the trademark was granted is not a violation of trademark policy. Claiming trademark infringement is a legal process, and we will not release a namespace for trademark violation without a court order.

__________________

**Macros**

* [GitLab.com::Name Squatting Policy::Failed Namespace Request](https://gitlab.zendesk.com/agent/admin/macros/360051465039)
* [GitLab.com::Name Squatting Policy::Internal Checklist](https://gitlab.zendesk.com/agent/admin/macros/360051569860)
* [GitLab.com::Name Squatting Policy::First Response](https://gitlab.zendesk.com/agent/admin/macros/360051569840)
* [GitLab.com::Name Squatting Policy::Contact Namespace Owner](https://gitlab.zendesk.com/agent/admin/macros/360051465059)
* [GitLab.com::Name Squatting Policy::Successful Namespace Request](https://gitlab.zendesk.com/agent/admin/macros/360051569820)


**Automations**

* [Dormant Namespace Check](https://gitlab.zendesk.com/rules/94693587/edit)
