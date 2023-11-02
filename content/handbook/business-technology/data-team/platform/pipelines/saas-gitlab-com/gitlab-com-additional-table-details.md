---

title: "Gitlab.com additional table details"
description: "Gitlab.com additional table details"
---





{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---

## Table of Contents

1. [Introduction](#introduction)
2. [merge_request_diff_commits table](#merge_request_diff_commits-table)

## Introduction

This page is used to highlight any additional details about a particular Postgres table in terms of how it's extracted, loaded, or transformed.


## merge_request_diff_commits table

`merge_request_diff_commits` has a few differences from other Postgres tables stemming from its size and use-case that deserve to be documented. The implementation was done in [this epic](https://gitlab.com/groups/gitlab-data/-/epics/911#note_1517320426).

This section will cover the following:
- background information
- notable differences in the extract and transform process compared to regular pgp tables
- how to use the dbt backfill DAG in case a full refresh needs to be run again.


### About the table `merge_request_diff_commits`

`merge_request_diff_commits`, as the name would suggest, are all the commits associated with a `merge_request_diff`.

In turn, a `merge_request_diff` represents the state of the MR at a particular point in time.

One important but not necessarily intuitive point is that for a particular `merge_request_diff`, not only does it include the just-pushed commit(s) that created said diff, but it also includes all previous commits in the MR.

#### Example of the commits for each diff

|merge_request_id|merge_request_diff_id|commit #|
|----------------|---------------------|--------|
|1               |1                    |commit1 |
|1               |1                    |commit2 |
|1               |2                    |commit1 |
|1               |2                    |commit2 |
|1               |2                    |commit3 |

Take the above example, for one MR, there have been two `merge_request_diffs`, i.e the user has pushed two separate times.

On the first push, the user committed `commits1` & `commits2`.  `Diff1` should show both of those commits.

And on the second push, the user committed `commit3`. One could imagine `diff2` just showing commit3, but *in reality*, it also shows the commits1 and commits2 from the previous diff, as those commits also make up the current state of the MR.



### Extract (incremental) differences

A standard incremental extract will use the `updated_at` to extract the latest records.

However, the `merge_request_diff_commits` table does not have an 'updated_at' column.

Luckily, this is a 'no updates' table. This is because once a user pushes their commit(s) to the remote branch, even if they re-write history with a rebase/reset/etc, a new set of commit hashes would still be generated, but old hashes are still preserved (both by git and the GitLab application).

Because of the lack of an 'updated_at' field due to no updates to this table, this table is loaded incrementally by `merge_request_diff_id`. It checks the current max(diff_id) and loads any diff_id's that are greater.

#### Note on Primary key

It should be noted that the `merge_request_diff_id` is not the PK of the commits table. The *composite_key* is made up of `(merge_request_diff_id, relative_order)`.

We can confidently use `merge_request_diff_id` exclusively because all commits for that diff are included as a set. Additional commits will generate a *new* merge_request_diff.

### Transform differences

For the transform step as well, due to the lack of an `updated_at` field in the incremental model, the `merge_request_diff_id` is used.

The interesting thing about [this commits model](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/models/workspaces/workspace_engineering/merge_request_diffs/internal_merge_request_diff_commits.sql) is that there are 2 entrypoints.

The first entrypoint is through an Airflow backfill DAG. The DAG is the **only way to full-refresh** the table.

The 2nd entrypoint is through the normal `dbt` DAG, which will incrementally update the model.

The model is able to handle these two entrypoints with this [block of code](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/models/workspaces/workspace_engineering/merge_request_diffs/internal_merge_request_diff_commits.sql#L26-32):

```sql
SELECT
  {% if var('backfill_start_id', false) != false %}
  '{{ var("backfill_start_id") }}'
{% else %}
    MAX(merge_request_diff_id) + 1
  FROM {{ this }}
  {% endif %}
```

The code is saying that if `backfill_start_id` env variable exists (which is injected from the backfill DAG), use that, else use incremental logic based on merge_request_diff_id.

### Transform dbt backfill DAG

Steps necessary:

1. Make sure the target table `prod.workspace_engineering.internal_merge_request_diff_commits` already exists. If it doesn't already exist, it can be created via two options
    - regular db DAG run (will create empty table)
    - manually create the table in Snowflake using the Transformer role like so: `create table prod.workspace_engineering.internal_merge_request_diff_commits like raw.tap_postgres.gitlab_db_merge_request_diff_commits;`
1. In Airflow, update the Admin variable DBT_GITLAB_DOTCOM_MERGE_REQUEST_DIFF_COMMITS_BACKFILL_MAX_ID to your desired ID for the backfill process.
    - To find the current maximum 'diff_id', please refer to the raw.tap_postgres.gitlab_db_merge_request_diff_commits table.
1. Before triggering the backfill DAG, make sure the dbt DAG run has finished. This is important because if the dbt DAG starts in the middle of the backfill, it will attempt to do an incremental load before it should.
1. Trigger the [backfill DAG](http://airflow.gitlabdata.com/dags/dbt_gitlab_dotcom_merge_request_diff_commits_backfill/grid). It should take 2-3 hours to run all 100 chunks (at the time of writing with 10 billion records).


### Design difference: No source models

`merge_request_diff_commit` model is set up a bit differently than other models- it doesn't have a source model layer.

Per office hour discussion, Peter is okay with keeping the model(s) in the workspaces for now and skipping the source layer.

This needs to be compared against the standard approach which is:
- source model (dedup/rename)
- internal model downstream

We are okay with skipping the source model (for now) because:
- would allow us to filter out unneeded (non-internal) records prior to rename/dedup which would save both on compute/storage
- the source model layer would be almost completely wasted storage due to needing less than 1% of data
  - Alternatively, the source model could be immediately filtered for internal commits only, but that would require moving the `internal_merge_requests` table outside the workspace models since the commits table depends on this table to do the filtering.

If we ever get to a point where non-internal merge-request commits are needed, we can implement the standard approach.
