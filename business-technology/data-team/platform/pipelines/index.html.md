---
layout: handbook-page-toc
title: "Data pipelines"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

## Background
The data warehouse contains source data from different source systems, via different extraction methodologies (i.e. Fivetran, Stich and Postgres pipeline). This page describes the different data sources and the way we extract this data via data pipelines.

## GitLab Postgres Database

There are **dedicated** gitlab.com _read_ replica database instances used for data pulls into Snowflake. There are 2 replicas available, with each having their own replication frequency and behavior.  

```mermaid
graph LR;
A[GitLab.com-DB-Live] -->|build_destroy_mechanism| B[GitLab.com-DB clone running on  port 25432]
    A --> |wal_files_mechanism| C(Gitlab.com-DB Live Replica)
    B --> | Data Engineering Pipeline SCD| D(Snowflake_DWH)
    B --> | Data Engineering Pipeline Incremental| D(Snowflake_DWH)
```

 - `GitLab.com-DB clone` will be destroyed at 10:30PM UTC and rebuilt at 11:15PM UTC. This results in an available time window between 00:00AM UTC to 11:30PM UTC to query this database. If data is extracted from this replica outside the window, an error will occur, but it will not result in any data loss.
- `Gitlab.com-DB Live Replica` is populated with data via WAL files continuously. 

Currently, to ensure a stable data-feed, both the incremental and full loads utilise the `GitLab.com-DB clone` instance. During development and tests activities, we faced issues with loading out of the `Gitlab.com-DB Live Replica` as a result of write and read actions at the same time (query conflicting). To increase the time for a query conflicting with recovery, there are `max_standby_archive_delay` and `max_standby_streaming_delay` settings. This should be configured on the server side and could result increasing lag on the replication process. We should avoid that and thus we are reading out of a more static data source.

[Runbook](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/storage/fs/zfs/zlonk/README.md) entry of where to look for issue in the clone setup. 
### Monitoring/Alerting
Zlonk implements [job completion](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/uncategorized/job_completion.md) monitoring. Alerts are funneled to the `#alerts` Slack channel with a S4 severity.
Alert something like [this](https://gitlab.slack.com/archives/C12RCNXK5/p1626695850455100) would be present. 
Alert generated: 
```
GitLab job has failed: The GitLab job "clone" resource "zlonk.." has failed.
Tier: db, Type: zlonk.postgres
```

We need to reach out to `@sre-oncall` on slack incase we see any issue with our pipeline where the postgress database of gitlab.com is not accessible. 


### Incremental and full loads
1. Incremental extract 
- This is the most convenient methodology, a minimal amount of records is transferred. Prerequisite is that there is a delta column available on the source table level
- +/- 120 tables are incrementally extracted
- Load time about 1 hour
- Executed every 6 hours
2. Full extract (at this moment +/- 100 tables & load tie about 4 hours)
- This is the alternative if no delta column is available on source table level, or if records are deleted in the source.
- +/- 100 tables are incrementally extracted
- Load time about 4 hours
- Executed every 24 hours

The extraction methodology is determined via the manifest file. 

### Manual Backfill of table from Postgres To Snowflake
This section is used only when we need to do a backfill for a table that has below condition satisfied of gitlab Postgres database. 
- Airflow task for the table has been completed to the latest date. 
- The data in the table is missing for a date or date range for which catch-up has already been completed. 
- If dropping the table and reloading will breach the SLO.

In the above case, we can use this approach to pull the data and load it to the snowflake target table. It has been done for one of the table in this [issue](https://gitlab.com/gitlab-data/analytics/-/merge_requests/5003)

Below is the step to be followed for the same. 

Step 1:- Connect to Kubernetes pod
 `kubectl exec -ti <pod_name> -c <webserver|scheduler> /bin/bash`.
 In our current setup 
 `kubectl exec -ti airflow-deployment-7484d899c6-tfm8v -c scheduler /bin/bash` 

Step 2:- Established connection to Postgres using python library. This is required to go through the Kubernetes pod because we don't have access to Postgres directly. The table for which the data has to be extracted picks up the query from the respective manifest file. Below is the step to execute the query and fetch the output in the csv file. In this example, it is being done for table `experiment_subjects`
```
python3
import psycopg2
conn = psycopg2.connect(
host="",
database="",
user="",
password="",
port=,
options='-c statement_timeout=900000'
)
cur=conn.cursor()
sqlstr = "COPY (SELECT id , experiment_id, user_id, group_id, project_id, variant, created_at, updated_at, converted_at, context FROM experiment_subjects WHERE updated_at BETWEEN '2021-04-05T19:14:20'::timestamp AND '2021-04-26T10:08:16'::timestamp) TO STDOUT WITH CSV HEADER "
with open('experiment_subjects.csv','w') as f:
cur.copy_expert(sqlstr, f)
```
This will generate the file in the Kubernetes pod itself. 
Notes:- The credentials need to be picked up from the secure vault

Step 3: Upload the file using gsutil to GCS to postgres_pipeline
```
  gsutil cp experiment_subjects.csv gs://postgres_pipeline/
```
Step 4: Prepare the timestamp variable as we are not pushing this through the dataframe to enrich the file with _uploaded_at column. Hence it needs to be done using the command line.
```
  import time 
  print(time.time())
```
The value returned will be used while performing copy into snowflake as target table has _uploaded_at column which needs to be populated. 
Step 5: Read each column defined in the manifest file as below and add a _uploaded_at timestamp column to it like below. This needs to be executed in snowflake to validate the data is correct and it can also be used to do a certain audit. 
```
SELECT $1 as id ,
$2 as experiment_id,
$3 as user_id,
$4 as group_id,
$5 as project_id,
$6 as variant,
$7 as created_at,
$8 as updated_at,
$9 as converted_at,
$10 as context, '1621841251.8090081' as _uploaded_at
FROM `@stage`/experiment_subjects.csv ;
```
The stage is the Postgres pipeline stage.

Step 6: Load the data using copy into and load this data in RAW.tap_postgres.gitlab_db_experiment_subjects table.

### GitLab Database Schema Changes and DangerFile

The data engineering team maintains a Dangerfile in the main GitLab project [here](https://gitlab.com/gitlab-org/gitlab/-/blob/master/danger/datateam/Dangerfile) with the purpose of alerting the `@gitlab-data/engineers` group about any changes to the gitlab.com source schema definition file. Being notified about source schema changes is essential to avoiding errors in the extraction process from the GitLab.com database since extraction is based on running a series of select statements. The data engineer on triage for any given day is the DRI for investigating schema changes as well as creating issues for any needed action from the data team.

### Trusted data framework tests

On this data pipeline, 3 types of Trusted Data Framework tests are executed:
1. Source freshness.
2. Row-count tests.
3. Data actual tests.

 **Source freshness** is checked via the dbt functionality.
<br> **Row count** and **Data actual** are performed via an extra `DAG`, named `gitlab_com_data_reconciliation_extract_load` in Airflow and the results are stored in snowflake table named `RAW.TAP_POSTGRES.GITLAB_PGP_EXPORT`

## SheetLoad

SheetLoad is the process by which a Google Sheets and CSVs from GCS or S3 can be ingested into the data warehouse.

Technical documentation on usage of SheetLoad can be found in the [readme](https://gitlab.com/gitlab-data/analytics/tree/master/extract/sheetload) in the data team project.

If you want to import a Google Sheet or CSV into the warehouse, please [make an issue](https://gitlab.com/gitlab-data/analytics/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=) in the data team project using the "CSV or GSheets Data Upload" issue template. This template has detailed instructions depending on the type of data you want to import and what you may want to do with it.

### Considerations
{: #mind-about-sheetload}

SheetLoad should primarily be used for data whose canonical source is a spreadsheet - i.e. Sales quotas. If there is a source of this data that is not a spreadsheet, you should at least [make an issue for a new data source](https://gitlab.com/gitlab-data/analytics/-/issues/new?issuable_template=New%20Data%20Source) to get the data pulled automatically. However, if the spreadsheet is the SSOT for this data, then SheetLoad is the appropriate mechanism for getting it into the warehouse.

### Loading into Snowflake

SheetLoad is designed to make the table in the database an exact copy of the sheet from which it is loading. Whenever SheetLoad detects a change in the source sheet, it will drop the database table and recreate it in the image of the updated spreadsheet. This means that if columns are added, changed, etc. it will all be reflected in the database. Changes are detected within 24 hours.

### Preparing for SheetLoad

Except for where absolutely not possible, it is best that the SheetLoad sheet import from the original Google Sheet directly using the `importrange` function. This allows you to leave the upstream sheet alone while enabling you to format the SheetLoad version to be plain text. Any additional data type conversions or data cleanup can happen in the base dbt models. (This does not apply to the Boneyard.)

Some additional considerations for preparing the data for loading:

* format all numeric columns to have no commas or other symbols - 1000.46 instead of $1,000.46
* use simple headers where possible - `user_name` instead of `GitLab - User Name`
* use blank cells to indicate no data. blank cells are stored as `null` in the database.

### Modeling

Before regular SheetLoad data can be accessible by Sisense, it has to be modeled via dbt. A minimum of 2 models will be made for the sheet: a [source model](/handbook/business-technology/data-team/platform/dbt-guide/#source-models) and a [staging model](/handbook/business-technology/data-team/platform/dbt-guide/#staging). These will be made by a member of the data team once you've [made an issue](https://gitlab.com/gitlab-data/analytics/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=) in the data team project.

### Boneyard

The `boneyard` schema is where data can be uploaded from a spreadsheet and it will be directly available for querying within Sisense. However, this is for instances where a one-off analysis is needed and/or you need to join this to data already in the warehouse. It is called Boneyard to highlight that this data is relevant only for an **_ad hoc/one off_** use case and will become stale within a relatively short period of time. We will periodically remove stale data from the `boneyard` schema.

### Certificates

If you are adding Certificates to SheetLoad, refer to the instructions in the [People Group page](/handbook/people-group/learning-and-development/certifications/#step-5-add-to-sheetload)

## Zuora Revenue 
Zuora Revenue is an application where you can automate the complicated revenue management process in compliance with the latest revenue standards (ASC 606 and IFRS 15).
As part of data pipeline for Zuora Revenue extraction process, we extract data using REST Call from Zuora Revenue BI views (created by Zuora Revenue in the product by default, we only use these views and could not create or alter these views).
The data entities for Zuora Revenue BI views are based on the key physical tables. Some BI views are similar to the physical tables on which they are based. Other BI views are derived from calculations based on the physical tables.   

### Zuora Network Architecture 
The Zuora system is placed behind a firewall. In order to get access through the firewall GitLab IP address needs to be allowlisted. The Kubernetes Engine does not have a static IP, hence an extra compute engine is in place, with a static IP to gain access to Zuora.

![Zuora Network ](https://lucid.app/publicSegments/view/81713250-c9ab-410d-8cde-4b4ce7865b56/image.png)


From this [list](https://knowledgecenter.zuora.com/Zuora_Revenue/Zuora_Revenue_BI_views) only below table are being loaded or had data for Gitlab in Zuora Revenue at the moment for integration. 

Below is the list of table which has data and which will be created in snowflake. The table which is not having data will not be created because the table definition provided by Zuora API is not on the column ordinal position but it alphabetical order, which makes column labeling incorrect.

|Serial No|Data entity in Zuora|Physical table In Zuora|View Name in Zuora|Table Name in SF|Has Records|Present in Snowflake|
|----|--------------------|-----------------------|-------------------|--------------|-------------|-----------|
|1|Account Type|RPRO_BI3_ACCT_TYPE_V|BI3_ACCT_TYPE|BI3_ACCT_TYPE|Yes|Yes|
|2|Accounting Pre-Summary|RPRO_BI3_RI_ACCT_SUMM_V|BI3_RI_ACCT_SUMM|BI3_RI_ACCT_SUMM|Yes|Yes|
|3|Approvals|RPRO_BI3_APPR_DTL_V|BI3_APPR_DTL|BI3_APPR_DTL|Yes|Yes|
|4|Bill|RPRO_BI3_RC_BILL_V|BI3_RC_BILL|BI3_RC_BILL|Yes|Yes|
|5|Calendar|RPRO_BI3_CALENDAR_V|BI3_CALENDAR|BI3_CALENDAR|Yes|Yes|
|6|Deleted Schedules|RPRO_BI3_RC_SCHD_DEL_V|BI3_RC_SCHD_DEL|BI3_RC_SCHD_DEL|Yes|Yes|
|7|Header|RPRO_BI3_RC_HEAD_V|BI3_RC_HEAD|BI3_RC_HEAD|Yes|Yes|
|8|Holds|RPRO_BI3_RC_HOLD_V|BI3_RC_HOLD|BI3_RC_HOLD|Yes|Yes|
|9|Lines|RPRO_BI3_RC_LNS_V|BI3_RC_LNS|BI3_RC_LNS|Yes|Yes|
|10|MJE|RPRO_BI3_MJE_V|BI3_MJE|BI3_MJE|Yes|Yes|
|11|POB|RPRO_BI3_RC_POB_V|BI3_RC_POB|BI3_RC_POB|Yes|Yes|
|12|Schedules|RPRO_BI3_RC_SCHD_V|BI3_RC_SCHD|BI3_RC_SCHD|Yes|Yes|
|13|Waterfall (Derived)|RPRO_BI3_WF_SUMM_V|BI3_WF_SUMM|BI3_WF_SUMM|Yes|No|
|14|Org|RPRO_BI3_ORG_V|BI3_ORG|BI3_ORG|No|No|
|15|Acct Summary (Derived)|RPRO_BI3_LN_ACCT_SUMM_V|BI3_LN_ACCT_SUMM|BI3_LN_ACCT_SUMM|No|No|
|16|Book|RPRO_BI3_BOOK_V|BI3_BOOK|BI3_BOOK|No|No|
|17|Cost|RPRO_BI3_RC_LN_COST_V|BI3_RC_LN_COST|BI3_RC_LN_COST |No|No|


### Zuora Revenue Extract 
<details>
  <summary markdown="span">Below is the information around the extraction of Zuora Revenue extraction pipeline, click here to expand</summary>

### Setup the environment in Compute engine 
Do SSH to the zuora compute engine using your service account.
Below is the server details in GCP 
https://console.cloud.google.com/compute/instancesDetail/zones/us-west1-a/instances/zuora-revenue-extract-server?project=gitlab-analysis&rif_reserved

 ssh -o UserKnownHostsFile=/dev/null -o CheckHostIP=no -o StrictHostKeyChecking=no -i $HOME/.ssh/google_compute_engine -A -p 22  <username>@<external_ip>


From separate terminal go to ` ~/repos/analytics/extract/zuora_revenue/src` directory and run below command to upload whole directory to compute engine. This directory contains the code for the extraction process.

gcloud compute scp --recurse src --zone "us-west1-a" zuora-revenue-extract-server:/home/vedprakash/zuora_revenue

This will upload the src folder from your branch your local to the compute engine branch. 

### Post connection and upload of file. 
`Step 1 `: Create a virtual environment inside the compute engine named --- `zuora-revenue-extract-venv` 

Keep the same name to keep the changes minimal. 

`python3 -m venv zuora-revenue-extract-venv`

`Step 2`: Activate the venv

`source /home/vedprakash/zuora-revenue-extract-venv/bin/activate` 

`Step 3`: Post that upgrade the pip

`pip install --upgrade pip`

`Step 4`: Go to src folder and install all the required package. 

`pip install -r requirements.txt`

`Notes:`  Step 1 to Step 4 is required only when the environment is crashed and we have got to build it from start not required for general operations. 

### Below Steps is required if we have accidentally deleted the GCS bucket folder, then we need to do below steps for each table. Also if there is requirement to add new table into the system then also we below steps can be used.


`Step 5`: Create the start_date_<table_name>.csv file which holds   table_name,load_date information.
For example for table BI3_MJE the file name will be 
 `start_date_BI3_MJE.csv` and file content will be below.

table_name,load_date   
BI3_ACCT_TYPE,                   
load_date for new table should be left blank because it will start to download the file from start. For other we can pick up the last load date from airflow log. 
For the current table below is the list of command to create the file, this can be done from local or from compute engine as well. 

```
echo "table_name,load_date
BI3_ACCT_TYPE," > start_date_BI3_ACCT_TYPE.csv
echo "table_name,load_date
BI3_APPR_DTL," > start_date_BI3_APPR_DTL.csv
echo "table_name,load_date
BI3_CALENDAR," > start_date_BI3_CALENDAR.csv
echo "table_name,load_date
BI3_MJE," > start_date_BI3_MJE.csv
echo "table_name,load_date
BI3_RC_BILL," > start_date_BI3_RC_BILL.csv
echo "table_name,load_date
BI3_RC_HEAD," > start_date_BI3_RC_HEAD.csv
echo "table_name,load_date
BI3_RC_HOLD," > start_date_BI3_RC_HOLD.csv
echo "table_name,load_date
BI3_RC_LNS," > start_date_BI3_RC_LNS.csv
echo "table_name,load_date
BI3_RC_POB," > start_date_BI3_RC_POB.csv
echo "table_name,load_date
BI3_RC_SCHD," > start_date_BI3_RC_SCHD.csv
echo "table_name,load_date
BI3_RC_SCHD_DEL," > start_date_BI3_RC_SCHD_DEL.csv
echo "table_name,load_date
BI3_RI_ACCT_SUMM," > start_date_BI3_RI_ACCT_SUMM.csv
```

This command create the file for each table and then putting required column name and value. 
The load_date is set to null because it will be treated as first run.   
`Note:` If we know the load date then place in `2016-07-26T00:00:00`  format `%Y-%m-%dT%H:%M:%S` for the particular table. 

`Step6`: Now we need to upload the file in staging area. Below is the set of command for upload each file to respective table in staging area. 

```
gsutil cp start_date_BI3_MJE.csv             gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_MJE/
gsutil cp start_date_BI3_ACCT_TYPE.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_ACCT_TYPE/
gsutil cp start_date_BI3_APPR_DTL.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_APPR_DTL/
gsutil cp start_date_BI3_CALENDAR.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_CALENDAR/
gsutil cp start_date_BI3_RC_BILL.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_BILL/
gsutil cp start_date_BI3_RC_HEAD.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_HEAD/
gsutil cp start_date_BI3_RC_HOLD.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_HOLD/
gsutil cp start_date_BI3_RC_LNS.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_LNS/
gsutil cp start_date_BI3_RC_POB.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_POB/
gsutil cp start_date_BI3_RC_SCHD.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_SCHD/
gsutil cp start_date_BI3_RC_SCHD_DEL.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RC_SCHD_DEL/
gsutil cp start_date_BI3_RI_ACCT_SUMM.csv  gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_RI_ACCT_SUMM/
```

`Step 7`: To run the extract below variable needs to be declared in the .bash_profile file of the server.   
```     
    export zuora_bucket=""
    export zuora_dns=""
    export authorization_code=""
    export python_venv="source /home/vedprakash/zuora-revenue-extract-venv/bin/activate" #From step 2
    export zuora_extract_log="/home/vedprakash/zuora_revenue/src/logs/"
    export zuora_src="/home/vedprakash/zuora_revenue/src" #The path of source code
```
`Note:` The credentials is present in 1 password under `zuora_revenue_prod`.

`Step 8`: The last step is to do the schedule.Add below command to crontab. 
Once edited and ready add the required command to crontab of that machine. 
The current schedule is set to run at 02:00 AM UTC every day. 
```
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_ACCT_TYPE     -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_APPR_DTL      -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_CALENDAR      -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_MJE           -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_BILL       -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_HEAD       -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_HOLD       -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_LNS        -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_POB        -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_SCHD       -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RC_SCHD_DEL   -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
00 02 * * * . $HOME/.bash_profile;$python_venv && cd $zuora_src && python3 extract_zuora_revenue.py -table_name BI3_RI_ACCT_SUMM  -bucket_name $zuora_bucket -api_dns_name $zuora_dns -api_auth_code "$authorization_code" &>/tmp/mycommand.log
```

## Zuora Extract Flow Chart 
![Zuora Extract FLow](https://lucid.app/publicSegments/view/87b3c145-78aa-4fe8-bc1e-63c4c008c0a1/image.png)

At the end of the process below will be output. 
1) A success log file is present named `<table_name>_DD-MM-YYYY.log`  upload to path zuora_revpro_gitlab/RAW_DB/staging/<table_name>/<table_name>_DD-MM-YYYY.log.log. For example for table BI3_MJE the log file for the day will be named `BI3_MJE_21-06-2021.log` and it will be uploaded to the path `gs://zuora_revpro_gitlab/RAW_DB/staging/BI3_MJE/BI3_MJE_21-06-2021.log`
2) Any file for the date range wil be present in the GCS bucket. 
</details>

## In order to add table for extraction to Snowflake.
From this list if any table get the data and we need to add the entry to snowflake then we need to follow below steps.    
**Step 1:** Add the entry `extract/zuora_revenue/zuora_revenue_table_name.yml` to add task in the `zuora_revenue_load_snow` DAG.  
**Step 2:** For the respective table follow  Step 5, Step 6 and Step 8.
<br>**Step 3:** Pickup the column name from the file downloaded and set all column to varchar, then create the table in snowflake RAW.ZUORA_REVENUE schema.

**Notes:** Don't use the describe column API to create the table definition because the order of column in list may differ from original table definition. 


### For Derived table 
Zuora have provided view definition for the derived view. As extracting data from the derived view is not feasible in production. Hence for table BI3_WF_SUMM we prepare the data in the DBT model in PREP layer with the DDL provided from Zuora. The DDL definition is present in extract/zuora_revenue/README.md in repo. 
