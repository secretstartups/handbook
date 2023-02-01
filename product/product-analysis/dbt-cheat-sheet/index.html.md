---
layout: handbook-page-toc
title: "dbt Cheat Sheet"
description: "data build tool (dbt) Cheat Sheet for Functional Analysts"
---

## On this page
{:.no_toc}

- TOC
{:toc}

---

## Objective of this page
{:.no_toc}

This page is intended to be a cheat sheet or quick start guide to dbt for functional analysts. 
There is a wealth of documentation available in the [Data Team dbt Guide](/handbook/business-technology/data-team/platform/dbt-guide/), 
but it can be hard to sift through for folks who are newer to analytics engineering 
(ex: functional analysts).

This page aggregates existing resources in order to guide you through the basic 
steps required to create and test an MR to update a model in dbt.

## Local setup

First things first, you need to get set up with dbt on your local machine. Please read 
[the Configuration section of this handbook page](/handbook/business-technology/data-team/platform/dbt-guide/#configuration) 
for in-depth instructions. (Pro tip: read the entire section first, then start following 
the directions). As the section mentions, much of what you need is handled by 
running the onboarding script.

### profiles.yml Tips

* Looking for your `profiles.yml` file? Go to your home directory and hit `command` + `shift` + 
`.`. This will expose your hidden files (ones that have a period as the first character) and reveal the file you need to update.
* `user:` This is your GitLab email address (ex: `JSMITH@GITLAB.COM`)
* `role:` This is your Snowflake role, usually first initial + last name (ex: `JSMITH`)
* `database:` This is your first initial + last name (ex: `JSMITH`)
* Set up targets for different sized warehouses (ex: one for `DEV_XS` and one for `DEV_XL`)

## Setting up development databases in Snowflake

To do testing locally, you have your own PROD and PREP databases available for development. 
Because of the large data volumes (especially the product models), we _strongly_ recommend 
that you clone any required dependencies for the model(s) that you are building.
DO NOT build these using `dbt run`, you should only do that for models that you have changed. 
If you build these using `dbt run`, it will take a really long time and consume a lot of resources 
because it completely builds the models from scratch.

Here are a few options for cloning dependencies in Snowflake. In these examples, pretend that 
your role is `JSMITH` and your development databases are `JSMITH_PROD` and `JSMITH_PREP`.

<!--- Temporarily commenting out this section until the error and permissions issue is fixed. 
Otherwise this will lead to analysts losing access to the models they are trying to clone :(

### Clone a lineage using the command line

Please see instructions [here](/handbook/business-technology/data-team/platform/dbt-guide/#cloning-models-locally) 
on how to clone an entire lineage (similar to the CI jobs) using the command line.

--->

### Clone a single model using Snowflake

This will clone a single model from the production database into your development database. 
Cloning a single model only takes a few seconds.

```
CREATE OR REPLACE TRANSIENT TABLE {DEV_DATABASE}.{SCHEMA_NAME}.{TABLE_NAME}
CLONE {PROD_DATABASE}.{SCHEMA_NAME}.{TABLE_NAME}
;

--Example
CREATE OR REPLACE TRANSIENT TABLE JSMITH_PROD.common.dim_ping_metric
CLONE PROD.common.dim_ping_metric
;
```

Note: the schema must already exist in your development database in order to clone the model

<details markdown="1">
  <summary>How to create a new schema in your development database</summary>

```
CREATE SCHEMA IF NOT EXISTS {DEV_DATABASE}.{SCHEMA_NAME};

--Example
CREATE SCHEMA IF NOT EXISTS JSMITH_PROD.COMMON;
```

</details>

### Clone an entire schema using Snowflake

This will clone all models in a production schema into a schema in your development database. 
Cloning an entire schema can take several minutes.

```
CREATE OR REPLACE SCHEMA {DEV_DATABASE}.{SCHEMA_NAME}
CLONE {PROD_DATABASE}.{SCHEMA_NAME}
;

--Example
CREATE OR REPLACE SCHEMA JSMITH_PROD.COMMON
CLONE PROD.COMMON
;
```

## Running and testing models in dbt

### Running models in dbt

Once you make the desired changes to the model(s) you are working on, you need to build 
the model(s) locally to make sure the build succeeds and do local testing. To do this, 
you can use the [`dbt run`](https://docs.getdbt.com/reference/commands/run) command. Here 
are some other useful resources and tips:

* [GitLab Data Team dbt command line cheat sheet](/handbook/business-technology/data-team/platform/dbt-guide/#command-line-cheat-sheet)
* [Model selection syntax overview](https://docs.getdbt.com/reference/node-selection/syntax)
* You can specify multiple models by including them in a command with a space in between the names
* You can specify multiple models by using [graph operators](https://docs.getdbt.com/reference/node-selection/graph-operators) 
like `+` and `@` to refer to upstream or downstream models
* You can specify that you want to run the models using a larger warehouse by setting the 
`target` (warehouse connection)

```
$ dbt run --select my_model                         # run my_model
$ dbt run --select my_model my_model_2              # run my_model and my_model_2
$ dbt run --select my_model+                        # run my_model and all children
$ dbt run --select +my_model                        # run my_model and all parents
$ dbt run --select +my_model+                       # run my_model, all of its parents, and all of its children
$ dbt run --select @my_model                        # run my_model, all parents, all children, AND all parents of all children
$ dbt run --select my_model+ --exclude my_model_2   # run my_model and all children EXCEPT my_model_2
$ dbt run --select my_model --target dev_xl         # run my_model using an XL warehouse (targets defined in profiles.yml)
```

### Testing models in dbt

Testing models in dbt just requires you to run `dbt test`. `dbt test` uses the same syntax 
(ex: `--select`) as `dbt run`

```
$ dbt test --select my_model                 # run custom tests on my_model
```

### Linting

Once you are running dbt, linting a model can be done with a single command. Please read the 
[SQLFluff section of the SQL Style Guide](/handbook/business-technology/data-team/platform/sql-style-guide/#sqlfluff) 
for instructions on how to install SQLFluff on your local machine and more more details about 
the linter settings. When you run the linter, the results will be printed in your terminal.

```
$ sqlfluff lint models/path/to/file/file-to-lint.sql
```

### Real-world walkthrough

Here is the agenda from a [dbt working session](https://docs.google.com/document/d/1Fqp-IsJDTNf6o8Veyo31CJSRk7yBe8_dhEkQc9a4XC8/edit?usp=sharing) 
with the Data team and functional analysts. You can view the [recording here](https://youtu.be/MSOhgHVjB90), 
the live demo of updating and testing a model starts at ~30:00.

## MR Workflow

The Data team has a well-documented [MR workflow](/handbook/business-technology/data-team/how-we-work/#merge-request-workflow).

### MR templates

Make sure you use the appropriate MR template based on your use case. The templates also 
have detailed instructions on testing, pipelines, etc. For that _vast_ majority of use cases,
you will use one of the following templates:

* [dbt Model Changes](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/merge_request_templates/dbt%20Model%20Changes.md): 
Use this for changes to common or legacy (non-workspace) models
* [dbt Workspace Changes](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/merge_request_templates/dbt%20Workspace%20Changes.md): 
Use this for changes to workspace schemas (ex: `workspace_product`)
* [All Other Changes](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/merge_request_templates/All%20Other%20Changes.md): 
Use this for updates to dbt docs that do not actually change the models

### MR Pipelines & CI jobs

Please see the [Data Team CI Jobs handbook page](/handbook/business-technology/data-team/platform/ci-jobs/) 
for the most up-to-date information and details about the different CI jobs.

There are 2 different ways to kick off a job, either from the MR pipelines page or on a specific pipeline page

#### Clone dependencies

The first thing you will need to do is clone the dependencies required for your model. 
There are a couple of ways to do this, but the fastest, preferred method is to use 
[⚙️ dbt Run > 🔆⚡️clone_model_dbt_select](/handbook/business-technology/data-team/platform/ci-jobs/#clone_model_dbt_select).

![clone_model_dbt_select on pipelines page](/images/product-data-insights/clone_model_dbt_select_on_pipelines_page.png){: .shadow}

⚙️ dbt Run > 🔆⚡️clone_model_dbt_select requires you to pass which models to clone using 
the `DBT_MODELS` variable.

* Key: `DBT_MODELS`
* Value: `+[changed_model_name]` (this will clone all the specified model and all its parents)

![clone_model_dbt_select variables](/images/product-data-insights/clone_model_dbt_select_variables.png){: .shadow}


Other options for cloning models are: 
* [❄️ Snowflake > 📈❗️clone_prod_real](/handbook/business-technology/data-team/platform/ci-jobs/#clone_prod_real): 
this job clones _all_ of PREP and PROD databases and does not require any configuration/variables
* [❄️ Snowflake > 📈⚙clone_prod_specific_schema](/handbook/business-technology/data-team/platform/ci-jobs/#clone_prod_specific_schema): 
this job clones the schema provided in the `SCHEMA_NAME` variable

#### Build changed models

Once the dependencies are cloned, you can actually build the model you are changing. To do this, 
use [⚙️ dbt Run > 🏗🛺️run_changed_models_sql](/handbook/business-technology/data-team/platform/ci-jobs/#run_changed_models_sql).

![run_changed_models_sql on pipelines page](/images/product-data-insights/run_changed_models_sql_on_pipelines_page.png){: .shadow}

⚙️ dbt Run > 🏗🛺️run_changed_models_sql will run all .sql models in the MR diff where the SQL 
has been edited. Please note that there are actually 3 versions of the `run_changed_models_sql` 
job, each on a different sized warehouse. Select the job that is best suited for your use 
case, keeping in mind the time it will take to run the models and the cost of running a larger 
warehouse.

1. 🏗🛺️run_changed_models_sql runs on a XS warehouse
1. 🏗️🛺🦖run_changed_models_sql_l runs on a L warehouse
1. 🏗️🛺🐘run_changed_models_sql_xl runs on a XL warehouse

While there are not any required variables for this CI job, there are 1-2 that will be helpful 
in speeding up the job and testing the upstream/downstream models.

1. All CI jobs are set to run a full refresh, including incremental models. Overwrite this setting 
by passing the variable `REFRESH` with a single space ` ` as the value. (This satisfies the 
_vast_ majority of use cases. It would only be on a MR relating to an incremental model when 
you would not want to pass this variable)
  * Key: `REFRESH`
  * Value: ` ` (just a whitespace)
2. You can specify that you want to also build models that are upstream or downstream of the 
changed model. Passing the variable `DEPENDENT_TYPE` with a value of `+` will build the 
changed model in addition to all downstream dependencies. (This satisfies the _vast_ majority 
of use cases where you need to test upstream/downstream dependencies). See more options/details 
in the [Data team documentation](/handbook/business-technology/data-team/platform/ci-jobs/#run_changed_models_sql)
  * Key: `DEPENDENT_TYPE`
  * Value: `+`

![run_changed_models_sql variables](/images/product-data-insights/run_changed_models_sql_variables.png){: .shadow}

#### Specify model

Sometimes you need to build a single model when re-running the pipeline or in testing MRs 
that do not change any SQL files (ex: updates to dbt docs). In this case, you want to use 
[⚙️ dbt Run > 🐭specify_model](/handbook/business-technology/data-team/platform/ci-jobs/#specify_model). 

![specify_model on pipelines page](/images/product-data-insights/specify_model_on_pipelines_page.png){: .shadow}

Like `run_changed_models_sql`, there are different versions of ⚙️ dbt Run > 🐭specify_model, 
each using a different sized warehouse. Again, you should select the job that is best suited 
for your use case, keeping in mind the time it will take to run the models and the cost of 
running a larger warehouse.

1. 🐭specify_model runs on a XS warehouse
1. 🦖specify_l_model runs on a L warehouse
1. 🐘specify_xl_model runs on a XL warehouse

This job requires a single variable, `DBT_MODELS` to specify which model you want to build.

* Key: `DBT_MODELS`
* Value: `[model_name]`

![specify_model variables](/images/product-data-insights/specify_model_variables.png){: .shadow}

### MRs to add new tables or columns to the Postgres/GitLab.com pipeline

In order to facilitate self-service on requests to add a new table or column to the 
Postgres/GitLab.com pipeline, the Data team created a runbook and videos to outline the 
required steps:

* [Runbook](https://gitlab.com/gitlab-data/runbooks/-/blob/main/Gitlab_dotcom/postgres_new_source_table_.md)
* [Video (Part 1)](https://www.youtube.com/watch?v=kpI8GjQQq3A)
* [Video (Part 2)](https://www.youtube.com/watch?v=Pd3J4eBX1ek)

### Getting a review

Before assigning any reviewers, make sure that you go through the checklist in the MR templates. 
This will ensure that you completed all required steps before a member of the Data team starts 
reviewing the code.

In the `Auditing` section, make sure that all queries refer to the MR branch database. 
(Once all of the CI jobs are done running, ask the data engineer on triage for access 
to the database so that you can query it in Snowplow). Analytics Engineers reviewing the 
MR will also have access to the MR database and that is how they will review and validate.

Once the MR is ready for review, tag code owners and assign as reviewers (you will see 
code owners listed in the approval section of the MR).

### Getting the MR merged

Once the MR is approved by the required number of code owners (as specified in the approval 
section of the MR), you can assign to a maintainer for final review and merge.
