---
layout: handbook-page-toc
title: JiHu guidelines for database changes
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## JiHu guidelines for database changes

For JiHu contributions that contain database migrations (for PostgreSQL), there are two routes to consider:

1. Upstream fully: Contribute the code change including database migrations upstream into GitLab
1. Upstream migrations only: Only upstream database migrations without the code change (for a proprietary feature)

The following details guidelines and background for **proprietary contributions** where we choose to upstream database migrations only.

For changes that are going to be fully upstreamed including code changes, we follow the regular GitLab contribution workflow and the following does *not* apply.

### Schema changes

For structural changes, we choose to send all database migrations to the upstream project. In order to facilitate upgrade paths between
GitLab CE/EE and JiHu releases, we intend to keep the database schema exactly the same across both GitLab and JiHu.

This is an extension of the pattern we already apply for GitLab CE/EE: There is only one database schema for both editions.

We distinguish the following cases:

#### Column additions

A JiHu contribution may add columns to existing GitLab tables. However, those columns won't be used in the GitLab codebase. We
take the following measures for clarity:

1. Prefix JiHu-specific columns with `jihu_`
1. In a regular GitLab environment, ActiveRecord models ignore all columns starting with `jihu_`. This will be switched off in a JiHu environment.
1. Added columns can *only* be set nullable (`NULL`) or not-null with a default `NOT NULL DEFAULT x`

Optional: For JiHu, we may want to consider implementing a strategy to remove the `jihu_` prefix from ActiveRecord attributes. In the example of a column
named `jihu_phone_number`, we may want to have a model attribute called `phone_number`.

#### Table/view additions

When adding new tables in a JiHu contribution, we prefix the table name with `jihu_`. Those tables won't be used in
the GitLab codebase.

It is fine to add foreign keys to existing tables. However, a foreign key to an existing GitLab table has to be qualified with
a `ON DELETE` clause, which ensures cascading deletes work. This is particularly important to support migrations between GitLab
and JiHu (and back), where any leftover data would break cascading deletes without this clause.

#### Index additions

Indexes can be added to JiHu specific tables (`jihu_` prefix) without additional considerations.

In order to add indexes to a JiHu specific column on a GitLab table, the index must be turned into
a partial index to reduce its size on GitLab, for example:

```sql
CREATE INDEX jihu_user_details_phone ON user_details (phone_number) WHERE phone_number IS NOT NULL
```

Adding indexes to an existing GitLab column will need to be reviewed by the [database group](../../../engineering/development/enablement/database) on a case-by-case basis.

In all cases, we prefix JiHu specific index names with `jihu_`.

Optional: In order to reduce the overhead on GitLab.com, we may want to choose to ignore creating indexes with a `jihu_` prefix.

#### Additional objects

Other types of database objects, e.g. triggers, functions, extensions, etc., will need to be reviewed by the [database group](../../../engineering/development/enablement/database) on a case-by-case basis.

### Data migrations

A migration that mutates existing data is also merged into the upstream project. However, we'd like to avoid executing JiHu-specific data migrations in a regular GitLab environment, particularly on GitLab.com.
In order to facilitate this, we are going to implement the ability to target a data migration to a specific environment (e.g. "only in JiHu").
Later, we plan to extend this mechanic to support targeting on other aspects (e.g. "only on GitLab.com", "only on a particular database" etc.).

[Epic &6705](https://gitlab.com/groups/gitlab-org/-/epics/6705) details this work, which the [database group](../../../engineering/development/enablement/database) will execute upon.

Until those mechanics are available, any JiHu-specific data migration will need to be reviewed by the [database group](../../../engineering/development/enablement/database) on a case-by-case basis.

### Tradeoffs/Discussion

We recognize that this pattern has the following disadvantages (with mitigations):

| Disadvantage | Mitigation |
|---|---|
| We add database objects to GitLab that are unused in the codebase. | By prefixing object names, we are explicit about this to reduce confusion. |
| We accept overhead for any GitLab installation, including GitLab.com,<br />to create and maintain JiHu-specific database objects that are not strictly in use by or necessary for GitLab. | For GitLab.com, we may choose to ignore `jihu_` indexes (we don't need to be able to upgrade to JH). |
| Always having to go through GitLab to add database migrations limits flexibility for JiHu. | JiHu may want to add their own migrations at the expense of having to support upgrades between editions specifically. |

#### Alternative: JiHu specific migrations (not chosen)

We considered an [alternative approach is to keep JiHu specific migrations separate](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/90336).

JiHu may want to implement mechanics to allow for JiHu specific migrations that are not going to be merged into the upstream project. This would allow for more flexibility and autonomy in terms
of database changes, at the expense of increasing the complexity to support various upgrade paths between GitLab CE/EE and JiHu editions. Since there can be conflicts between GitLab and JiHu migrations
over time (much like a Git timeline, examples in (issue #161)[https://gitlab.com/gitlab-jh/gitlab/-/issues/161]), JiHu would need to provide schema migrations specifically to each supported upgrade path from GitLab.

We didn't choose this option at this point in time to allow for quicker turnaround and less complexity, even though we recognize it is a cleaner solution with respect to the GitLab codebase.

### Considerations for database review by GitLab team members

Reviewing changes with database migrations but without the related code changes has proven to be difficult for database reviewers and maintainers.
In order to help GitLab reviewers to understand the context in more detail, we ask to have the related code change ready and reviewed, before asking for a database review.
The related code change should be linked from the merge request, along with any useful background information.

Otherwise we follow the same process as outlined in [How to prepare the merge request for database review](https://docs.gitlab.com/ee/development/database_review.html#how-to-prepare-the-merge-request-for-a-database-review).

### Questions?

Please engage with the [database group](../../../engineering/development/enablement/database) for any questions and support.
