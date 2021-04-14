---
layout: handbook-page-toc
title: 'Allow and Block Lists'
category: 'General'
description: 'An overview of the allow and block lists in Zendesk'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Zendesk has a built in allow/deny system via the
[allowlist and blocklist](https://support.zendesk.com/hc/en-us/articles/203663286-Using-the-whitelist-and-blacklist-to-control-access-to-your-Zendesk).
We often use this to help mitigate attacks on Zendesk (such as spam). This is
accessed via `Admin` > `Customers` > `Settings`. Quick links for these would
be:

* [Zendesk Global](https://gitlab.zendesk.com/agent/admin/customers)
* [Zendesk US Federal](https://gitlab-federal-support.zendesk.com/agent/admin/customers)

## Formatting conventions

There are two types of items you can put in an allowlist or blocklist:

* Specific user email addresses
* Domains

For users, simply put the full email address. For domains, simply put the
domain itself (do not put the `@` sign, as this will cause it to not work
properly).

## Allowlist

This is what determines who is automatically allowed to submit tickets. By
default, we tend to allow all users and domains to submit tickets. This is most
useful in cases where users/domains get marked as spam when submitting tickets.
In such cases, it helps to put the user/domain on the allowlist to prevent that
from occurring.

The separator for the allowlist is whitespace (e.g. ` `). To have it apply to
multiple, simple have whitespace between them:

```
gitlab.com reports@example.com
```

## Blocklist

When it comes to use the blocklist, there are 3 different actions you can take:

* Auto-suppression
* Auto-rejection
* Auto-suspension

The separator for the blocklist is whitespace (e.g. ` `). To have it apply to
multiple, simple have whitespace between them:

```
example.com reject:bad_user@example.com suspend:i_am_spammer@example.com
```

### Auto-suppression

This ability automatically suppresses tickets from specific users or domains.
The caveat here being they have to be registered users, so often this only
works in cases of simple attacks. The format for doing this is simple:

* For domains:
  ```
  example.com
  ```
* For users:
  ```
  im_not_real@example.com
  ```

### Auto-rejection

This ability automatically rejects tickets from specific users or domains. This
prevents their creation entirely. You can automatically reject a ticket using
the following format in the blocklist:

* For domains:
  ```
  reject:example.com
  ```
* For users:
  ```
  reject:bad_user@example.com
  ```

### Auto-suspension

This ability automatically suspends users when they submit tickets. We rarely
use this function, as normally [auto-suppression](#auto-suppression) or
[auto-rejection](#auto-rejection) will accomplish our goals. But should the
case arise, you can automatically suspend a user using the following format in
the blocklist:

* For domains:
  ```
  suspend:example.com
  ```
* For users:
  ```
  suspend:i_am_spammer@example.com
  ```

## List review

From time to time, we might need to review the list to make sure it is still
working for us. This is especially true in cases of the blocklist. We use this
often to help mitigate attacks. But legitimate users can get caught in this.
Because of this, we should review the list rules from time to time to make sure
they are still valid and required.
