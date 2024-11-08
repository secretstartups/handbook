---
title: Maintenance Tasks
description: Support Operations documentation page for Zendesk maintenance tasks
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/maintenance"
---

To maintain healthy environments, there are several maintenance tasks we must
do. While the aim is to always automate these, some cannot be automated and
must be done manually from time to time.

## Fix bad task ticket

- Automated in Zendesk Global via
  [Zendesk Global > Maintenance Tasks](https://gitlab.com/gitlab-support-readiness/zendesk-global/maintenance-tasks)
  to run every hour at the 30 minute mark.
- Automated in Zendesk US Government via
  [Zendesk US Government > Maintenance Tasks](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/maintenance-tasks)
  to run every hour at the 30 minute mark.

This locates Task type tickets that have a Due Date set before the current time.
Any tickets found in this state have their due date removed and are set to the
type of Question.

Applicable instance:

- Zendesk Global
- Zendesk US Government

## Fix false expired tags in orgs

- Automated in Zendesk Global via
  [Zendesk Global > Maintenance Tasks](https://gitlab.com/gitlab-support-readiness/zendesk-global/maintenance-tasks)
  to run every hour at the 30 minute mark.

This locates organization's containing the `expired` tag and a `support_level`
value that is not `expired`. For these organizations, we need to remove the
false `expired` tag. The script will do so after checking the following:

- Removing the `expired` tag does not remove all `support_level` tags on the
  organization
- Removing the `expired` tag would yeild an actual update

Applicable instance:

- Zendesk Global

## Permanently delete deleted users

- Automated in Zendesk Global via
  [Zendesk Global > Maintenance Tasks](https://gitlab.com/gitlab-support-readiness/zendesk-global/maintenance-tasks)
  to run twice daily via Pipeline Schedules at 0045 and 1245.
- Automated in Zendesk US Government via
  [Zendesk US Government > Maintenance Tasks](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/maintenance-tasks)
  to run twice daily via Pipeline Schedules at 0045 and 1245.

Deleting a user removes them from the Zendesk workspace, however it does not
actually _fully_ remove the user. As such, we need to routinely remove these
deleted users from Zendesk.

Applicable instance:

- Zendesk Global
- Zendesk US Government

## Purge Redis cache for global_organizations

- Automated in Zendesk Global via
  [Zendesk Global > Maintenance Tasks](https://gitlab.com/gitlab-support-readiness/zendesk-global/maintenance-tasks)
  to run every Saturday at 0030 UTC.

This clears the Redis data within the key `global_organizations`. This is needed
from time to time to ensure the Redis cached data isn't stale.

Applicable instance:

- Zendesk Global

## Purge Redis cache for usgov_organizations

- Automated in Zendesk US Government via
  [Zendesk US Government > Maintenance Tasks](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/maintenance-tasks)
  to run every Saturday at 0030 UTC.

This clears the Redis data within the key `usgov_organizations`. This is needed
from time to time to ensure the Redis cached data isn't stale.

Applicable instance:

- Zendesk US Government

## Purge Redis cache for usgov_users

- Automated in Zendesk US Government via
  [Zendesk US Government > Maintenance Tasks](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/maintenance-tasks)
  to run every Saturday at 0030 UTC.

This clears the Redis data within the key `usgov_users`. This is needed from
from time to time to ensure the Redis cached data isn't stale.

Applicable instance:

- Zendesk US Government

## Maintenance Tasks project locations

The Maintenance Tasks projects are located at:

- [Zendesk Global](https://gitlab.com/gitlab-support-readiness/zendesk-global/maintenance-tasks)
- [Zendesk US Government](https://gitlab.com/gitlab-support-readiness/zendesk-us-government/maintenance-tasks)
