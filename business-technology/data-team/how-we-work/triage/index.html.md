---
layout: handbook-page-toc
title: "Data Triage Guide"
description: "GitLab Data Triage Guide"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---

## <i class="fas fa-users fa-fw color-orange font-awesome" aria-hidden="true"></i>Data Triage

#### Enterprise Data Program Triage

GitLab has a robust and vibrant Data Program which includes a Central Data Team and many Functional Analytics Teams. GitLab total team members are growing as well and we need to uplevel our triaging process to keep up with GitLab's growth. 

Steps to uplevel triaging process:

1. Incorporate Functional Analytics Teams into the #data channel triaging process.
1. Create Slack Aliases so that GitLab Team members can ping a group of folks to get help with their questions in #data.
1. Create a Triage Schedule for the Data Program to follow on the Data Program Calendar. Ask for a commitment of one team member, per Business Team, per day to help triage.

### Enterprise Data Triage Groups

| Triage Group Name   | Triage Slack Alias  | Triage Group Members  |  
| -------------- | ------------------- | -------------------- |
| Go To Market Analytics Triage | `@GTMAnalyticsTriage` |  Sales Strategy & Analytics Team, Marketing Strategy and Performance Team, Business Insights and Analytics Team, GTM Data Fusion Team |
| R&D Analytics Triage | `@R&DAnalyticsTriage` | Product Data Insights Team, R&D Data Fusion Team |
| People Analytics Triage | `@PeopleAnalyticsTriage` | People Group Analytics Team, G&A Data Fusion Team |
| Engineering Analytics Triage | `@EngineeringAnalyticsTriage` | Engineering Analytics Team, G&A Data Fusion Team |
| Data Platform Triage | `@DataPlatformTriage`   | Data Platform Team |
| Data Collaboration Triage | `@DataCollaborationTriage`   | Data Collaboration Team |

### Enterprise Data GitLab Projects

| Link to GitLab Data Projects |  
| -------------- |
| [Data Team](https://gitlab.com/gitlab-data/analytics) |
| [Sales Strategy and Analytics](https://gitlab.com/gitlab-com/sales-team/field-operations/analytics) |
| [Marketing Strategy and Performance](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance) |
| [Product Data Insights](https://gitlab.com/gitlab-data/product-analytics) |
| [Business Analytics](https://gitlab.com/gitlab-com/business-analytics) |
| [Engineering Analytics](https://gitlab.com/gitlab-com/quality/engineering-analytics) |
| [People Analytics](https://gitlab.com/gitlab-com/people-group/people-analytics) |
| [Customer Success Operations - Use CSAnalytics label](https://gitlab.com/gitlab-com/sales-team/field-operations/customer-success-operations) |
| [Online Sales and Self-Service](https://gitlab.com/gitlab-com/sales-team/self-service) |

### Enterprise Data Triager 

| Slack Channel Alias| Analytics Team | Sunday | Monday | Tuesday | Wednesday | Thursday |	Friday |
| ---------     | -----------------    | -------| -------|---------| ----------|----------|--------|
| `@GTMAnalyticsTriage` | Sales Strategy and Analytics |	|	`@melia` |	|	`@Noel Figuera` 	|	| |
|	                  | Marketing Strategy and Performance | |		|	`@David Egan` |	|	`@rkohnke`	| |
|	                  | Business Insights and Analytics |	|	 `@Vikas Agrawal` |	`@Jay Zhang` |	`@Kelly Chen` |	`@charan karthikeyan` |	`@Jay Stemmer` |
|	                  | GTM Data Fusion |	| `@Peter Empey` |	 | `@Michelle Cooper`	| 	`@Jean Peguero`	 |  |
| `@R&DAnalyticsTriage` |	Product Data Insights | `@matthewpetersen`	|	 `@Carolyn Braza` | 	`@Dave Peterson` | 	`@Emma Neuberger` |	`@Nicole Galang` |	 `@Neil Raisinghani` |
|	                  | R&D Data Fusion	|	| 	| `@Tim Poole`	| `@Chris Sharp` 	| `@snalamaru` (`@lisvinueza` back up) | `@Miles Russell`	 |
| `@PeopleAnalyticsTriage` | People Analytics	|	|	|	|	| `@Adrian Pérez` | |	
|	                  | G&A Data Fusion |	| `@Peter Empey` |	 	| | | |		
| `@EngineeringAnalyticsTriage` |	Engineering Analytics |		|	 | `@Raul Rendon` | |  `@lily` |	
|	                  | Engineering Data Fusion |		| `@Peter Empey` 	| 	|		|     |     |
| `@DataPlatformTriage` |	Data Platform | | `@vprakash` / `@csnehansh` (shadowing) | `@Paul Armstrong` | `@Radovan Bacovic` |	`@Rigerta Demiri` | `@jstark` / @juwong (shadowing) |
| `@DataCollaborationTriage` | Data Collaboration |	`@Ken` |	`@Ken` |	`@Ken` |	`@Ken` 	| `@Ken` | |	


### Enterprise Data Program Triage Instructions 

1. GitLab Team members can ping one of the groups above for any questions or help. When not clear, ping a group based on best guess. If a different group was needed, the request or question can always be re-routed.
1. Triager should review each slack message request in the **#data** that has the triager's assigned Slack alias pinged.
1. Triager should reply to slack threads by pointing GitLab team member to the appropriate handbook page, visualization, or to other GitLab team members who may know more about the topic. 
1. Triager should direct GitLab team member to the channel description, which has links to the various Data Program Projects, if the request requires more than 5 minutes of investigative effort from a Data Program team member.

A team member who is off, on vacation, or working on a high priority project is responsible for finding coverage and communicating to the team who is taking over their coverage;
this should be updated on the [Data Program's Google Calendar](https://calendar.google.com/calendar?cid=Z2l0bGFiLmNvbV9kN2RsNDU3ZnJyOHA1OHBuM2s2M2VidW84b0Bncm91cC5jYWxlbmRhci5nb29nbGUuY29t). To avoid putting the _Monday workload_ on the same shoulders every week again, the Data Platform Team will rotate/exchange every now and then triage days in good collaboration on an ad-hoc basis.

Having dedicated triagers on the team helps address the bystander affect. The schedule shares clear daily ownership information but is not an on-call position. Through clear ownership, we create room for everyone else on the team to spend most of the day around deep work. The triager is encouraged to plan their day for the kind of work that can be accomplished successfully with this additional demand on time.

#### Triage responsibilites 

Data triagers are the first responders to requests and problems for the Data Program.

- The Data Analyst triager is primarily responsible for responding to GitLab team member requests whether via issue, which posts to **#data-triage**, or directly via slack in **#data**.
- The Functional Analyst triager is primarily responsible for responding to GitLab team member requests via slack in **#data**.
- The Data Engineer triager is primarily responsible for resolving problems with our data platform, which will either be in the **#data-pipelines** slack channel or on the [DE - Triage Errors board](https://gitlab.com/groups/gitlab-data/-/boards/1917859). Issues created from these errors should use the [DE Triage Errors issue template](https://gitlab.com/gitlab-data/analytics/issues/new?issuable_template=Triage%20Errors%20DE).
    - During the assigned triage day the Data Engineer should be primarily focused on active issues or the issues on the [DE - Triage Errors board](https://gitlab.com/groups/gitlab-data/-/boards/1917859).
- The Analytics Engineer triager is primarily responsible for resolving `dbt-test` and `dbt-run` errors. Issues created from these errors should use the [AE Triage Errors issue template](https://gitlab.com/gitlab-data/analytics/issues/new?issuable_template=Triage%20Errors%20AE).
- For more information on responsibilities of a triager watch the [Data Engineer triage training session video](https://www.youtube.com/watch?v=0eGpgaQgEGg).

```
Data Analysts
- Respond to #data questions and assign to right Triage group
- Respond to new unassigned issues in our project and assign to the right team

Data Engineers:
- Respond to Data infrastructural incidents
- Respond to broken data pipelines
- Respond to data freshness issues
- Respond to broken dags (except for dbt issues, see next)

Analytics Engineers:
- Respond to errors in dbt models
- Respond to dbt test failures
```

### How to Complete Data Triage

For issue triaging, the triager should add the appropriate labels to the issue to put the issue into the respective project's workflow. It is not the responsibility of the triager to validate the issue and determine any root causes or solutions. Rather, for the Data Team project for example, the triager should add the appropriate scoped TEAM label (Ex.`Team:GTM`) and the scoped `Workflow::triage` label. From there, those issues are then put into the respective team's workflow.

**Note:**
The Triager:

- is not expected to know the answer to all the questions
- should cc (mention) other team members who are subject matter experts (SME) or [functional DRIs](/handbook/business-technology/data-team/#-team-organization) for their feedback
- should document any issues stumbled upon and help to disseminate knowledge amongst all team members

The Central Data Team triager will create [an issue in the Data Team project](https://gitlab.com/gitlab-data/analytics/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=&issuable_template=Data%20Triage). Task and duties are stated in the issue template. 

[Read](/handbook/business-technology/data-team/how-we-work/triage/) the FAQ and common issues.

### Incident

The Data Team follows the [incident definition](/handbook/engineering/infrastructure/incident-management) from Engineering: Incidents are anomalous conditions that result in—or may lead to—service degradation or outages. These events require human intervention to avert disruptions or restore service to operational status. 
 
Service degradation or outages in data can be seen as:
- Data is not available
- Data is not correct
- Data is outdated
- Data leakage
 
This means the following events (not extensive) are likely to be incidents:
- DBT model failed (and downstream models are skipped)
- DBT test failure
- DBT source freshness failure
- Infrastructural incident (Snowflake not accessible, Sisense not accessible)
- Data source not available
- Data pipeline not running
 
#### Severity
 
Depending on the nature and impact of the [incident](/handbook/business-technology/data-team/how-we-work/#incidents) a severity needs to be determined. Currently we don't have a decision matrix in place. To determine the severity, take the following aspects into consideration:
- In case of a data source or data pipeline incident, check the [Data Source Tier](/handbook/business-technology/data-team/platform/#data-sources).
- Number of users impacted
- Impacting Trusted Data models
 
#### Follow up
 
- Incidents are always given immediate attention.
- Every incident has a DRI assigned. This is not necessarily the triager/creator of the incident. Due to the nature of asynchronous working at GitLab, the triager/creator is the DRI until another GitLab Team Member is actively contacted/involved.
   - The [codeownerfile](https://gitlab.com/gitlab-data/analytics/-/blob/master/CODEOWNERS) is the right future* source to find the right DRI for assigning the incident. * Currently the code ownership is not well defined. As part of FY23-Q1 we are planning to have a more strict ownership.
- Every raised incident will be communicated in the `#data` Slack channel, followed by a short description, ETA and link to the incident. The right GitLab Team Members are tagged.
  - A regular (depending on the severity) update is posted in Slack. Sometimes there isn't a new status, don't hesitate to communicate this as well. 
  - When the incident is solved, an update is posted in Slack


### Triage Bot

Parts of triage are assisted by the [GitLab Triage Bot](https://gitlab.com/gitlab-org/gitlab-triage), which is setup in the Analytics project. The bot runs every hour and takes actions based on a set of rules defined in [a policies file](https://gitlab.com/gitlab-data/analytics/-/blob/master/.triage-policies.yml). The [GitLab Triage README](https://gitlab.com/gitlab-org/gitlab-triage#defining-a-policy) contains all documentation for the formatting and definition of rules.

Changes to the triage bot policy file should be tested in the MR by running the "dry-run:triage" CI job and inspecting the log output.  This CI job is a dry-run, meaning it will not actually take any actions in the project but will print out what would happen if the policy was actually executed.

### End of day wrap-up

In order to get better and be more efficient in daily triage, we wrap-up the work by the end of the day. The following information is provided by the Data Analyst and Data Engineer each day:
 
- Time Tracking: Listing down the time spent that day on triage and which activities are performed. The general idea is to gain an understanding on where the workload is, in order to optimize those activities. Please list down the work so it is useful for analysis purposes. I.e:
   - 2 hours solving data ingestion issue, for source x
   - 1 hours solving data transformation issue
   - 1 hour on solving a broken Sisense Dashboard
   - 1 hour triaging and re-routing (new) issues
   - 0.5 hour on answering Slack questions
- Groundhog Issues. Issues that occur on a regular basis are annoying and costing us unnecessary time. List down any issue that is popping up time after time. This is in order to find any spots in the current landscape to address.
 
A triage roundup will take place at the end of every milestone by the data leadership team to consolidate the milestones triage efforts. Please bear in mind the purpose of the information provided, to make it useful and improve Triage.

### GitLab.com DB structure changes
1 of the most important data source, that regularly changes, is the GitLab.com database. In order not to break the daily operation, changes to the database needs to be tracked and checked. Any change to the GitLab.com database, is made to the db/structure\.sql file. The Data Team gets notified, by applying labels to the MR, if a change to the db/structure\.sql is made, via the Danger Bot. 

A label `Data Warehouse::Impact Check` is added by the Danger Bot as call to action for the data team. 
- On triage, the Triager will [check](https://gitlab.com/gitlab-org/gitlab/-/merge_requests?scope=all&state=opened&label_name[]=Data%20Warehouse%3A%3AImpact%20Check) for MRs with label `Data Warehouse::Impact Check`.

The following actions are performed by Data Team Triager:
- Every merge request (`MR`) will be judged
   - If `MR` contains the label `group::product intelligence` along with `Data Warehouse::Impact Check`, there are a couple of checks that need to do:   
      - Because a new metric is added or the existing one is altered, the `Data team` should ensure the change will not break the `Service ping` extraction process 
      - Check new metric `SQL` statement from the original `MR` _(a typical example is [gitlab-org/gitlab/merge_requests/75504](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/75504/diffs#78300240169ab9f44b4dc25f6b6dcb56b3b629c7))_ and execute it on `Snowflake` - usually, it is just a `SELECT` `SQL` statement
   - If the changes to the `SQL` file are not causing a break in the operation, the label will be changed to `Data Warehouse::Not Impacted`.
   - If the changes to the `SQL` file causing a break in the operation:
      - The Label will be changed to `Data Warehouse::Impacted`
      - A new issue is opened in the `GitLab Data Team project`, assigned to the correct DRI and linked to the original MR. 
      - Impact will be determined in the issue.
      - Any MRs will be created to overcome loading issues, downstream dbt processing and Sisense usage.
      - According to the Merge of the GitLab.com MR, merge will be planned.
   - If the `MR` does not contains the label `group::product intelligence` and it concerns changes to `SQL` structure:
      - Check if it will break the operation / data pipeline, following the Determination matrix below.


   - If any `MR` will cause a break in the operation, the label will be changed to `Data Warehouse::Not Impacted`.
   - If any `MR` will cause a break in the operation:
      - The Label will be changed to `Data Warehouse::Impacted`
      - A new issue is opened in the `GitLab Data Team project`, assigned to the correct DRI and linked to the original MR. 
      - Impact will be determined in the issue.
      - Any MRs will be created to overcome loading issues, downstream dbt processing and Sisense usage.
      - According to the Merge of the GitLab.com MR, merge will be planned.
      - All stakeholders will be informed.


#### Graphical representation of the process

<details><summary>Click to expand graphical representation of the process</summary>

```mermaid
flowchart TD
    subgraph "Original MR"
       CHECK_BOARD
       ADDITIONAL_LABEL
       CLABEL
       CHANGE_LABEL_I
       CHECK_DDL
    end 
    CHECK_BOARD(Check MRs on the board) --> ADDITIONAL_LABEL{Does MR has a label: `group::product intelligence`}
    ADDITIONAL_LABEL --Yes--> CHECK_ORIGINAL_ISSUE_PI{{Check code in the original MR}}
    ADDITIONAL_LABEL --No--> CHECK_DDL{Will DDL break in the operation}
    CHECK_DDL --Yes--> CHANGE_LABEL_I(Change label to `Data Warehouse::Impacted`)
    CHECK_DDL --No-->CLABEL(Changed label to `Data Warehouse::Not Impacted`)
    CHANGE_LABEL_I-->OI(Open an new issue is opened in the `GitLab Data Team project`)
    subgraph "Data team project" 
       OI-->IM(Impact will be determined in the issue)
       IM-->CHECK(Check downstream dbt processing and Sisense usage)
       CHECK-->PL(Plan MR)
       PL-->INFORM(Inform stakeholders)
    end
    INFORM-->END((End))
    CLABEL-->END
    OK_SQL--Yes-->CLABEL
    OK_SQL--No-->CHANGE_LABEL_I
    subgraph "group::product intelligence" 
        CHECK_ORIGINAL_ISSUE_PI -->SQL[(Find and execute SQL statement)]
        SQL--Execute-->OK_SQL{Is SQL executed properly}

    end
```

</details>


Determination matrix: **

| Change | Call to action needed* |
| ------ | ------ |
| New table created | :x: |
| Table deleted | :white_check_mark: |
| Table renamed | :white_check_mark: | 
| Field added | :x: |
| Field removed | :white_check_mark: |
| Field name altered | :white_check_mark: |
| Field datatype altered | :question:|
| Constraints changed | :question: |

*We are not loading all the tables and columns by default. Thus if new tables or columns are added, we only will load these tables if there is a specific business request. Any change to the current structure that causes a potential break of operation needs to be determined. 

** Determination matrix is not extensive. Every MR should be checked carefully.  
 
## Triage common issues
In this section we state down common issues and resolutions

### GitLab Postgres Database not accessible
In a scenario when gitlab cloned Postgres database is not accessible, the airflow task log is showing below error. 
```
sqlalchemy.exc.OperationalError: (psycopg2.OperationalError) FATAL:  the database system is starting up\n
b'FATAL:  the database system is starting up\n'
```
Follow the steps mentioned below. 

1. Open an issue using the DE Triage template.
2. Pause all the gitlab.com DAG named `gitlab_com_data_reconciliation_extract_load` , `gitlab_com_db_extract`,`gitlab_com_db_incremental_backfill`,`gitlab_com_scd_db_sync`.  The reason behind is to keep the alerting down and not use unwanted resources.
3. Look into the alert channel and search for the “GitLab Job has failed” to locate the alert. The sample alert will have content like below.
```
Firing 1 - GitLab Job has failed
The GitLab job "clone" resource "zlonk.datalytics.dailyx" has failed.
:chart: View Prometheus graph:label: Labels:
 Alertname: JobFailed
 Alert_type: symptom
 Env: gprd
 Environment: gprd
 Fqdn: blackbox-01-inf-gprd.c.gitlab-production.internal
 Job: clone
 Monitor: default
 Provider: gcp
 Region: us-east
 Resource: zlonk.datalytics.dailyx
 Severity: s3
 Shard: default
 Stage: main
 Tier: db
 Type: zlonk.postgres
Show less
```
4. Reach out to `@sre-oncall` slack handle to look into the issue also raise an incident request using [incident declare](https://about.gitlab.com/handbook/engineering/infrastructure/incident-management/#reporting-an-incident). This will create a production incident issue for the SRE on-call team to act upon also `cc @gitlab-data/engineers` for broader visibility of the incident. 
5. Link the Infra issue with the Triage Issue raised. 
6. Once the issue is resolved or confirmed from the `@sre-oncall` person or someone from the DBRE team, try re-running one of the failed tasks by clearing one alone to validate the stability of the connection.
7. For DAG `gitlab_com_scd_db_sync` , `gitlab_com_data_reconciliation_extract_load` and `gitlab_com_db_incremental_backfill` clear failed task so that it get picked up for run as these task runs only once in 24 hour window.In case we have missed the whole schedule, we re-trigger the DAG itself. 
8. If DBT runs for the day miss the source refreshes, then post notification in the #data channel for the delay in source freshness using triage template.

### Automated service ping issue

In a situation when [Service ping](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/#service-ping-overview) fail while it generates metrics, we should be informed either via `Trusted data dashboard` or `Airflow` log - generally, the error log is stored in `RAW.SAAS_USAGE_PING.INSTANCE_SQL_ERRORS` table. Follow the instructions from the link [error-handling-for-sql-based-service-ping](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/#error-handling-for-sql-based-service-ping) in order to fix the issue.

### Zuora Stitch Integration single or set of table-level reset
It could happen, in any case, to [reset the table](https://www.stitchdata.com/docs/troubleshooting/destinations/destination-loading-error-reference#snowflake-error-reference) in Stitch for the Zuora data pipeline, in order to backfill a table completely (i.e. new columns added to in the source, technical error etc).
Currently, Zuora Stitch integration does not provide [table level reset](https://www.stitchdata.com/docs/integrations/saas/zuora#zuora-feature-snapshot), and thus we have to perform a reset of all the tables in the integration. This will result in extra costs and risks.

To this below steps can be followed using which we have successfully done the table level reset. 
In this example, we have used Zuora `subscription` table, but this could be applied to any other table in the Stitch Zuora data pipeline.

#### Step 1:- Rename existing table with the date suffix to identity the backup, recommended format YYYYMMDD

    ALTER TABLE "RAW"."ZUORA_STITCH"."SUBSCRIPTION" RENAME TO "RAW"."ZUORA_STITCH"."SUBSCRIPTION_20210903";
    
#### Step 2:- Pause the regular integration.
![Pause Regular integration](/images/Stitch_table_reset/Stitch_2.png "Stitch_int_2")

#### Step 3:- Create a new integration Zuora-Subscription in Stitch.
While setting it up setup the extraction frequency to 30 minutes and date from extraction to 1st Jan 2012 to ensure all data gets pulled through.

![With only the subscription table to replicate](/images/Stitch_table_reset/Stitch_1.png "Stitch_int_1")

#### Step 4:- Run the newly created integration..
Try running the newly created integration manually and wait for it to complete. Once completed then and it shows on the home page successfully. Once done Pause the newly integration task because we don't want any misaligned data while we follow the next steps.

#### Step 5:- Check for the records.
In the newly created table `"RAW"."ZUORASUBSCRIPTION"."SUBSCRIPTION"` cross-check the number of rows showing as loaded in the integration UI in stitch and loaded in the table is same.

#### Step 6:- Create the table in the main schema.
Move the newly loaded data to `ZUORA_STITCH` schema because the new integration will create the table in the `ZUORASUBSCRIPTION` as stated above in the image. 

    CREATE TABLE "RAW"."ZUORA_STITCH"."SUBSCRIPTION" CLONE  "RAW"."ZUORASUBSCRIPTION"."SUBSCRIPTION";
**Note:** Check for the primary key present in the table post clone or not if not check for the primary key in the [link](https://www.stitchdata.com/docs/integrations/saas/zuora#subscription) and add the constraints on those columns. 

#### Step 7:- Make records count check to ensure we don't have fewer records in the new table. 
    select count(*) from "RAW"."ZUORA_STITCH"."SUBSCRIPTION_20210903" where deleted = 'FALSE';
    select count(*) from "RAW"."ZUORA_STITCH"."SUBSCRIPTION" ;

#### Step 8:- Drop the new schema 
    DROP SCHEMA "RAW"."ZUORASUBSCRIPTION"  CASCADE ;

#### Step 9:- Delete temp Zuora-Subscription integration and enable regular integration
#### Step 10:- Run regular integration and validate
This is to ensure that error observed previously to the table is gone and data is getting populated in the table.
Check on duplicate ids due to 2 different extractors, to ensure the data is getting populated in the table correctly.

    select id, count(*) from "RAW"."ZUORA_STITCH"."SUBSCRIPTION"
    group by id
    having count(*) > 1
**Note** Refer to the [MR (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/10065#note_668365681) for more information.

### Source freshness errors 

See the [source contact spreadsheet](https://docs.google.com/spreadsheets/d/1VKvqyn7wy6HqpWS9T3MdPnE6qbfH2kGPQDFg2qPcp6U/edit) for who to contact if there are external errors related to a source. 

### Airflow Task failure

|   |
| ------------------------- |
| DAG `gitlab_com_db_extract` <br> Task `gitlab-com-dbt-incremental-source-freshness`  <br> |
| Background: This extract relies on a copy (replication) database of the GitLab.com environment. Its high likely that this is the root cause of a high replication [lag](https://prometheus-db.gprd.gitlab.net/graph?g0.expr=(pg_replication_lag)%20and%20on(instance)%20(pg_replication_is_replica%7Btype%3D~%22postgres-(archive)%22%7D%20%3D%3D%201)&g0.tab=0&g0.stacked=0&g0.range_input=1w&g1.expr=pg_long_running_transactions_age_in_seconds%7Btype%3D~%22postgres-(archive)%22%7D&g1.tab=0&g1.stacked=0&g1.range_input=6h). |
| More information of the setup [here (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/8283#note_537332709).  |
| Possible steps, resolution and actions: - Check for replication lag <br> - Pause the DAG if needed <br> - Check for data gaps <br> - Perform backfilling <br> - Reschedule the DAG  |
| Note: The GitLab.com data source is a very important data source and commonly used. Please inform an update business stakeholders accordingly. |

### Sheetload - Column '#REF!' is not recognised

|   |
| ------------------------- |
| DAG `sheetload` <br> Task `dbt-sheetload`  <br> |
| Background: This is an issue with Google sheets when data is being imported from a second sheet using Google sheets' import function. Occasionally the connections between the sheets stop working and the sheet needs to be refreshed. |
| More information of the setup [here](https://about.gitlab.com/handbook/business-technology/data-team/platform/pipelines/#sheetload).  |
| Possible steps, resolution and actions: <br> - In general you should just need to open the Google sheet which is failing and confirm the data has been re-populated. <br> - If you do not have access to the sheet contact @gitlab-data/engineers and confirm if anyone else does. |


### Model version_usage_data_unpacked stale

When got an error for model `version_usage_data_unpacked` and error looks like:
```
[2022-01-26 11:56:32,233] INFO - b'\x1b[33mDatabase Error in model version_usage_data_unpacked (models/legacy/version/xf/version_usage_data_unpacked.sql)\x1b[0m\n'
[2022-01-26 11:56:32,233] INFO - b' 000904 (42000): SQL compilation error: error line 241 at position 12\n'
[2022-01-26 11:56:32,233] INFO - b" invalid identifier '{metrics_name}'\n"
[2022-01-26 11:56:32,233] INFO - b' compiled SQL at target/compiled/gitlab_snowflake/models/legacy/version/xf/version_usage_data_unpacked.sql\n'
[2022-01-26 11:56:32,234] INFO - b'\n'
```

The root cause of this issue is when new metrics are introduced in an upstream model - and this model (along with model `version_usage_data_unpacked_intermediate`) try to pivot values to columns. Without full refresh, this will not happen under the pipeline. 

Full refresh required as per instructions from [dbt models full refresh](https://about.gitlab.com/handbook/business-technology/data-team/platform/infrastructure/#dbt-models-full-refresh).

An example for this failure is the issue: **[#11524 (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/11524)**

### Zuora Revenue Source and Target Column Mismatch

Sometimes Zuora Revenue source system as part of a certain release modify the source table definition by adding/removing column(In a year once or twice). Whenever this type of change happens it triggers failure in the loading task in DAG `zuora_revenue_load_snow`. 

For example, there was 3 additional column added to table `BI3_RC_POB` which lead to the below error message. 
```
[2022-03-21, 13:26:48 UTC] INFO - sqlalchemy.exc.ProgrammingError: (snowflake.connector.errors.ProgrammingError) 100080 (22000): 01a31326-0403-d02c-0000-289d37f10d4e: Number of columns in file (102) does not match that of the corresponding table (99), use file format option error_on_column_count_mismatch=false to ignore this error
[2022-03-21, 13:26:48 UTC] INFO -   File 'RAW_DB/staging/BI3_RC_POB/BI3_RC_POB_12.csv', line 3, character 1
[2022-03-21, 13:26:48 UTC] INFO -   Row 1 starts at line 2, column "BI3_RC_POB"[102]
[2022-03-21, 13:26:48 UTC] INFO -   If you would like to continue loading when an error is encountered, use other values such as 'SKIP_FILE' or 'CONTINUE' for the ON_ERROR option. For more information on loading options, please run 'info loading_data' in a SQL client.
```
When this kind of failure happens we need to alter/create or replace the target table and add the additional column to the table definition in RAW.ZUORA_REVENUE schema. It is good to practise creating or replacing because it requires doing the full refresh of the data because of the addition of a new column. 

Below are set of steps that will guide you to resolve this. 

**Step 1:-**  Download the first file from the storage to local to view the additional column. For any file, only the file name and folder name should be modified.
```
gsutil cp  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_POB/BI3_RC_POB_1.csv .
```

For any other file, only the file name and folder name should be modified. For example table, `BI3_RC_BILL` above command will change to ` gsutil cp gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_BILL/BI3_RC_BILL_1.csv .`

**Step 2:-** Once the file is downloaded look for the header of the file using the below command

```
head -1 BI3_RC_POB_1.csv 
```

**Step 3:-** Pull out the current table definition from snowflake using the below query
```sql
USE ROLE LOADER;
USE DATABASE RAW;
USE SCHEMA ZUORA_REVENUE;
select get_ddl('table','BI3_RC_POB');
```
Prepare the CREATE OR REPLACE TABLE query by comparing the missing column from the header and the table definition and adding them to the new table. The missing column should be at the end and the data type should be varchar. 
Deploy the modified SQL.

**Note:-** If the table doesn't exist then create the table with all the column named present in header with datatype as Varchar.

**Step 4:-** Move the log file from the process folder to the staging folder of the table. 

```
gsutil cp gs://zuora_revpro_gitlab/RAW_DB/processed/22-03-2022/BI3_RC_POB/BI3_RC_POB_22-03-2022.log  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_POB/
```
The point to consider in this command is the date in the path and the log file name. If the failure happened on `23-03-2022` then it will become `gs://zuora_revpro_gitlab/RAW_DB/processed/23-03-2022/BI3_RC_POB/BI3_RC_POB_23-03-2022.log` 

Validate in [GCS storage](https://console.cloud.google.com/storage/browser/zuora_revpro_gitlab/RAW_DB/staging?project=gitlab-analysis&pageState=(%22StorageObjectListTable%22:(%22f%22:%22%255B%255D%22))&prefix=&forceOnObjectsSortingFiltering=false) that the log file is present for the respective table.

**Step 5:-** Re-run the task from the airflow by clearing the task.  


## Triage FAQ
**Is Data Triage 24/7 support or shift where we need to support it for 24 hours?** <br>
We need to work in our normal working hour perform the list of task mentioned for the triage day in the [Triage Template (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/new?issuable_template=Data%20Triage&issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=)

**If any issue is found do we directly jump to fix it in production or take it as part of the incident and solve it within the defined time?** <br>
On the Triage day the data team member present will look for all the failures, questions or errors in:
- The Slack-channels; #data-prom-alerts #analytics-pipelines and #data
- Newly added [issues](https://gitlab.com/groups/gitlab-data/-/boards/1917859?&label_name[]=Priority%3A%3A1-Ops&label_name[]=Triage)
- The TDF dashboard in [Sisense](https://app.periscopedata.com/app/gitlab/756199/Trusted-Data-Dashboard)

It includes all the failures since the last person did sign off and will create an issue for all the failures since then till the person signs off.
If any data pipeline has broken and there is expected to be a delay in getting data loaded or refreshed. The concerned team has to be notified using the [Triage Template (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/new?

**Is there ETA for a different kind of issue?** <br>
If the pipeline is broken it needs to be fixed, currently we are working on defining SLO's for our data assets. For our data extraction pipelines, there is a comprehensive overview [here](/handbook/business-ops/data-team/platform/#extract-and-load/).

**If I work my normal hours on triage day i.e. till 11 AM of US timeline. What happens when the pipeline breaks post my normal hours and there is a delay in data availability?** <br>
Yes, the benefit of our presence is that we have a wide overage of hours. If the person who is on Triage is ahead of US timelines, we have an advantage of solving issues timely. The downside is that we have not full coverage that day for US timelines. This is an attention point towards the future. 


## Useful regex 

### Match lines where these terms do not exist 

`^(?!.*(<First term to find>|<Second term to find>)).*$`

e.g. For cleaning up Airflow logs: 

`^(?!.*(Failure in test|Database error)).*$`

