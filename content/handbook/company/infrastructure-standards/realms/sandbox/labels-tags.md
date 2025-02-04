---
title: "Sandbox Realm Labels and Tags"
description: "This handbook section defines the latest iteration of infrastructure standards for AWS and GCP across all departments and groups at GitLab."
---

## Quick Links

- [Infrastructure Standards - Sandbox Realm Documentation](/handbook/company/infrastructure-standards/realms/sandbox/)
- [Infrastructure Standards - Global Labels and Tags Standards](/handbook/company/infrastructure-standards/labels-tags/)
- [Infrastructure Standards - Policies](/handbook/company/infrastructure-standards/policies/)
- [Infrastructure Standards - Tutorials](/handbook/company/infrastructure-standards/tutorials/)
- [Infrastructure Standards - Helpdesk](/handbook/company/infrastructure-standards/helpdesk/)

## Quick Reference

We use the `gl_` prefix for all labels and tags. All keys use underscores (`snake_case`). All values should use hyphens (`alpha-dash` for slug'd values), however underscores are allowed.

### Global Labels/Tags

See the [list of global labels and tags](/handbook/company/infrastructure-standards/labels-tags/) that should be applied to each resource.

### Sandbox Realm Labels/Tags

| Slug/Label/Tag/Key                        | Usage              | Human Name                     | Documentation |
|-------------------------------------------|--------------------|--------------------------------|-----------------------------------------------------------------|
| `gl_sandbox_shutdown_after_days`          | Required           | Shutdown After Days            | [Usage Documentation](#shutdown-after-days-gl_sandbox_shutdown_after_days)              |
| `gl_sandbox_shutdown_working_hours`       | Optional           | Shutdown Outside Working Hours | [Usage Documentation](#shutdown-resources-outside-of-working-hours-gl_sandbox_shutdown_working_hours)              |
| `gl_sandbox_shutdown_date`                | Auto Calculated    | Shutdown Date                  | [Usage Documentation](#expiration-date-for-resources-to-shutdown-gl_sandbox_shutdown_date)              |

## Shutdown after Days (`gl_sandbox_shutdown_after_days`)

{{% alert color="success" %}}
This label/tag is required. Some Terraform modules will automatically calculate this for you.
{{% /alert %}}

```terraform
gl_sandbox_shutdown_after_days: '14'
```

The value set is used to calculate the `gl_sandbox_shutdown_date`. Our sandbox automation scripts will handle the shutdown of compute and other resources for you.

Our scripts will rescan shutdown resources and **permanently destroy them after 90 days** if they have not been powered up since the scripts powered them down.

### Expected Values

| Value         | Recommended Usage                                                             |
|---------------|-------------------------------------------------------------------------------|
| `14`          | (default) The default for all environments unless overridden.                 |
| `30` to `45`  | This is the recommended range for longer-term test environments.              |
| `2` to `90`   | The range of accepted integer values that do not require infra/security review unless a vulnerability is detected. |
| `91` to `365` | These values can be used but an infra/security review will be performed.      |
| `null`        | This is the recommended value for perpetual environments that do not power off. All environments with a `null` value are subject to an infra/security review. |

## Shutdown resources outside of working hours (`gl_sandbox_shutdown_working_hours`)

{{% alert color="info" %}}
This label/tag is recommended. Some Terraform modules will automatically calculate this for you. This is for future proofing and may not be fully implemented in this iteration.
{{% /alert %}}

```terraform
gl_sandbox_shutdown_working_hours: 'true'
```

### Expected Values

| Value         | Description                                                             |
|---------------|-------------------------------------------------------------------------|
| `true`        | (default) Resources can be systematically powered down overnight between 6pm (18:00) and 6am (06:00) and on weekends during the environment owner's timezone as set in `env_timezone`. This reduces compute hour spending from 168 hours per week to 60 hours per week, a 65% savings.  |
| `false`       | All resources will run 24/7 without any disruption. This consumes 720 compute hours per month. |

## Expiration Date for Resources to Shutdown (`gl_sandbox_shutdown_date`)

{{% alert color="info" %}}
This label/tag is optional. Some Terraform modules will automatically calculate this for you.
{{% /alert %}}

```terraform
gl_sandbox_shutdown_date: '2020-06-30'
```

The expiration time is calculated as 23:59:59 UTC on the date calculated from the `gl_sandbox_shutdown_after_days` value and the timestamp the resources was initially provisioned in the cloud provider. Due to limitations with the allowed characters in labels, we do not include the time since it requires colons and plus symbols for timezones.

This value can be updated/extended systematically as part of our expiration scripts (and future Slack notifications) if a user needs more time. After the expiration date has passed, an automated `terraform destroy` CI pipeline will run to remove all resources in the environment.
