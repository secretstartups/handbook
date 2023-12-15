# Source system / application / data pipeline name

Source system: Tableau Cloud
Specicif Site: https://10az.online.tableau.com/#/site/gitlab/home
Pipline: [Extract Admin Insights Data](https://10az.online.tableau.com/#/site/gitlab/flows/269529/overview)

## Business Use Case (Please explain what this data will be used for):

The data extracted in the this pipline is used to monitor and report on Tableau adoption and activiey.  Specificly using the event logs to deermin the monthly active users for the Tableau Cloud BI tool.  Additionaly the data data extracted is used to report on and monitor the content that users have access to.
 
## Data Categorization

| Data Classficiation | MNPI | Sensitive data | 
| ------------------- | ---- | -------------- |
| `Yellow` | `No` | `No` |

### Data information 

* How often does the data need to be refreshed? 
  - Data is extqacted one a day
* SLA Description: 
  - 24 hours to Snowflake
* Severity in case of an incident
  - [ ] Critical - S1
  - [ ] High - S2
  - [ ] Medium - S3
  - [x] Low - S4
* Who will be using this data, and where (dashboards, snowflake UI, etc.)?
  - Data team will use the data for reporting in dashboards
* Label used: Tableau
* Relevant issues:
  - 
 
## People matrix

| Role | Name | Gitlab Handle |
| ---- | ---- | ------------- |
| System owner | Israel Weeks | `iweeks` | 
| Technical contact for data related questions | Peter Empey | `pempey` |
| Technical contact for infrastructural related questions | Peter Empey | `pempey` |
| Data access approval* | N/A | N/A |
| Business users who need to be informed in case of data outage | Amie Bright | `amiebright` |
 
* Data access approval will be involved in the Access Request process and need to give approval if a GitLab team member applies for raw data access.
 
## Data pipeline (technical) description

The data from a Tableau Cloud site is extracted using a Flow on the site itself.  The Flow is a UI based sequence of sources and transformations followed by a write step to write the date to the Snowflake RAW database.  The flow can be managed with a the Tableau Cloud service account and specific role Snowflake credentials.

## Accessing the Pipeline

Access to the Tableau Cloud and the pipeline is through the service account set up through the `Tableau` credentials found in 1Password.

### Source Data Types

There are two general types of data extracted from the source system and each are processes slightly differently.  The first is a rolling event log that contains historical events for a fixed number of days, 90 days with our current licensing with Tableau, and the second is a snapshot of the current state of the site.  An extraction date should be added to each source for tracking and consistency.  The event log data should be loaded incrementally to the RAW database using the excising table as a reference for what should be loaded:

```mermaid

flowchart LR
  eventSource["Event Source"]
  rawData["Raw Data"]
  join["Left Outer Join"]
  extractedAt["Add Extraction Timestamp"]
  output["Write to RAW"]
  
  eventSource --> join
  rawData --> join
  join --> extractedAt
  extractedAt --> output


```

And the snapshot data should be loaded into the RAW database replacing the any data that already excising in the database.


```mermaid

flowchart LR
  snapshotSource["Snapshot Source"]
  extractedAt["Add Extraction Timestamp"]
  output["Write to RAW"]
  
  snapshotSource --> extractedAt
  extractedAt --> output

```

In order to select the correct output tables the schema and table must already exists on the database.

### Scheduling

The scheduling of the extract is performed on the Tableau Cloud site by creating a scheduled task as part of the flow and can be selected from any of the available schedules.

### Monitoring

The data team is notified of successful extractions and errors though the analyitcsapi@gitlab.com service account.