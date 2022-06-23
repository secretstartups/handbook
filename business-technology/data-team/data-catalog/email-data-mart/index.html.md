---
layout: handbook-page-toc
title: "Email Marketing Data Mart"
---
## On this page

- TOC
{:toc}

{::options parse_block_html="true" /}

---
## Email Marketing Data Mart

Over the last year, our team noticed a need for a solution that helped us scale our data requests and our lifecycle marketing tactics.

Enter the email marketing data mart (also known as Email Marketing Database), which integrates several disparate data sources to help us reach our users, customers, and prospects in a more intelligent and scalable way. 

In partnership with enterprise applications and marketing teams, we have created a solution that will enable GitLab to more quickly communicate critical customer and user updates, understand the overlap between prospects and users, and enable us to market to them more efficiently. 

#### The goal of this page:

* Help you to use the [TD: Email Marketing Data Mart README](https://docs.google.com/spreadsheets/d/1z0-QQbudAYU3pYS5CrdQMoyLxMipbx0rQzKTjx6AEZo/edit#gid=1701629744) to generate email campaigns.
* Help you understand the data models used to create the TD: Email Marketing Data Mart.
* `Coming Soon` Assess your understanding by taking a certification most applicable to your role at GitLab.
* How to add new fields to the Data Mart and Marketo
* And overall help everyone contribute!

### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://docs.google.com/spreadsheets/d/1z0-QQbudAYU3pYS5CrdQMoyLxMipbx0rQzKTjx6AEZo/edit#gid=1701629744" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">README - TD: Email Marketing Database</a>
<a href="https://lucid.app/lucidchart/12ee91c1-7ae5-4e99-96ae-bc51652dfa19/edit?page=kW05tjmZX.Hv#" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">ERD - TD: Email Marketing Database</a>
</div>
<br><br><br><br><br><br><br><br><br>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Getting Started </h1>

To get started we want to make sure you understand:

* Key terms that will explain how we account for the metrics
* The data sources behind the database

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Key Terms, Key Fields, and Business Logic </h1>

<details>
<summary markdown='span'>
  Key Terms
</summary>
Dimensions:

* Sales Segment
* Sales Region
* Product Tier
* Product Delivery
* User Role
* Subscription Start and End Dates
* Trial Start and End Dates

</details>

<details>
<summary markdown='span'>
  Key Metrics, KPIs, and PIs
</summary>
Facts:

* Usage Ping
* Days until trial ends

</details>

<details>
<summary markdown='span'>
  Key Fields and Business Logic
</summary>
* The grain of the Email Marketing Data Mart is one row per unique email address. There is a one to many relationship between each email address and different dimensions such as product tier, product delivery, and subscriptions. Therefore, in the Data Mart, we have used aggregation logic to create fields to describe the email addresses. For example, there are fields named `group_owner_of_saas_premium_tier` and `group_owner_of_saas_ultimate_tier` which are boolean fields. It is possible that a group owner could have a TRUE value for both of these fields if they are owners of both a Premium and Ultimate plan. 
</details>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;}
</style>
<h1 id="headerformat">Understanding the Data Sources and Data Models</h1>
<br>

Data Sources:

* Zuora
* Salesforce
* GitLab.com
* Customers DB
* Marketo

Entity Relationship Diagram (ERD):

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embeddedchart/12ee91c1-7ae5-4e99-96ae-bc51652dfa19" id="8DUnoPlKNRCA"></iframe></div>


<details>
<summary markdown='span'>
  Data Lineage
</summary>
* The dbt solution generates a dimensional model from RAW source data. The documentation and SQL for <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_marketing_contact#code">mart_marketing_contact can be found here </a>, and the complete data lineages can be found at <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_marketing_contact?g_v=1&g_i=%2Bmart_marketing_contact%2B"> dbt mart_marketing_contact lineage chart </a>
</details>

<details>
<summary markdown='span'>
  Example Queries
</summary>
Let's pull some email lists. You can use these queries in both Snowflkae and Sisense.
<br>
```
--Pull ALL owners and individual namespaces for Paid SaaS Plans
SELECT DISTINCT 
  email_address
FROM "PREP"."SENSITIVE"."MART_MARKETING_CONTACT"
WHERE GROUP_OWNER_OF_SAAS_BRONZE_TIER = TRUE
  OR GROUP_OWNER_OF_SAAS_PREMIUM_TIER = TRUE
  OR GROUP_OWNER_OF_SAAS_ULTIMATE_TIER = TRUE
  OR INDIVIDUAL_NAMESPACE_IS_SAAS_BRONZE_TIER
  OR INDIVIDUAL_NAMESPACE_IS_SAAS_PREMIUM_TIER
  OR INDIVIDUAL_NAMESPACE_IS_SAAS_ULTIMATE_TIER
```

</details>
<br>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Adding new columns to DataMart and Pump to Marketo </h1>

The process to add fields to the DataMart and Pump is below. There are several teams and systems involved.

1. [Create an issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=new_field) with Marketing Operations team to add a new field to Marketo (and SFDC, if applicable)
    - If field is existing, you can skip this step.
1. Marketing Operations creates a changeset in SFDC marketing sandbox and [creates an issue](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/new) to deploy the changeset. 
1. Marketing Operations creates a [new issue](https://gitlab.com/gitlab-data/analytics/-/issues/new?issuable_template=email_data_mart_pump_new_column) in Data Team project to add a column to the datamart.
1. Data team triages and asks questions as neeeded.
    -  If you have the reference SQL snippet, please add to the issue
1. Data team creates an MR to build column in
1. Data team [creates an issue](https://gitlab.com/gitlab-com//business-technology/enterprise-apps/integrations/platypus/-/issues/new?issuable_template=Change) to build out the integration in Platypus from the Data Mart to Marketo.


<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Updating The Marketing Do Not Contact List </h1>

The Marketing Do Not Contact (DnC) list contains a set of emails that have been identified as `undeliverable`, `do_not_send`, ... in Marketo. This information is then used in the Email Marketing Database to create the field `wip_is_valid_email_address` which defines whether an email can or cannot be contacted through email.

This list is uploaded through a process called Driveload. The Driveload process goes to a Google Drive folder and uploads the CSV files found in said folder to a table in the data warehouse. The Marketing Do Not Contact driveload process is set to `append = 1`, this means that any new CSV files that are added to the Google Drive folder will be appended to the past CSV files in the data warehouse table.

To update/add another CSV file to the list you need to:

1. Go to [the Marketing Do Not Contact List GDrive folder](https://drive.google.com/drive/folders/1EUYXgGYAcGEWGemu_SbYz3eCQjk57vRq)
2. Upload a CSV file containing the following fields: `address, is_role_address, is_disposable_address,	did_you_mean, result, reason, risk, root_address`.

    a. Make sure to use the same casing as shown here.
    
    b. At the very least the fields `address` (email address) and `result` (the field containing whether the email address is `undeliverable`, `unknown`, `do_not_send`, ...) need to be filled as the Marketing Database data models expect these fields to have valid information in them.

3. The driveload process runs everyday and it will automatically pick up the new CSV file dropped in the GDrive folder without any further manual inputs. So you just need to wait for this process to complete.

Note: If an email address is found more than once in the list then the information that will be taken will be from the latest uploaded CSV file.

In case a contact was first uploaded as `undeliverable`, `do_not_send`, ... and this is no longer the case and wants to be changed to deliverable, you only need to upload a new CSV file with said email address and the field `result` with a value of `deliverable` and follow the the above steps.

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Additional Resources </h1>

<details>
<summary markdown='span'>
  Email Marketing Data Pump
</summary>

For more information around the Email Marketing Data Pump, which is the technology in charge of moving a selected set of data from the email marketing database in Snowflake to Marketo, please reference [this page](https://about.gitlab.com/handbook/business-technology/enterprise-applications/integrations/wiki/integrations-list/marketing-data-pump/).

</details>



<details>
<summary markdown='span'>
  Trusted Data Solution
</summary>

Coming Soon

</details>

<details>
<summary markdown='span'>
  EDM Enterprise Dimensional Model Validations
</summary>
The [(WIP) Enterprise Dimensional Model Validation Dashboard](https://app.periscopedata.com/app/gitlab/760445/WIP:-Enterprise-Dimensional-Model-Validation-Dashboard) reports on latest Enterprise Dimensional model test and runs.
</details>

<details>
<summary markdown='span'>
  RAW Source Data Pipeline validations
</summary>
[Data Pipeline Health Validations](https://app.periscopedata.com/app/gitlab/715938/Data-Pipeline-Health-Dashboard)
</details>

<details>
<summary markdown='span'>
  Data Security Classification
</summary>


**ORANGE**

- Description: Personal data at the row or record level. Given this, this data is masked in `PROD.COMMON_MART_MARKETING`, but is available in `PREP.SENSITIVE`. Customer Metadata (such as customer company name) is available in `PROD.COMMON_MART_MARKETING`
- Objects: 
  - `PREP.SENSITIVE.DIM_MARKETING_CONTACT`
  - `PREP.SENSITIVE.MART_MARKETING_CONTACT`
  - `PROD.COMMON_MART_MARKETING.MART_CRM_TOUCHPOINT`
  - `PROD.COMMON_MART_MARKETING.MART_CRM_ATTRIBUTION_TOUCHPOINT`
 
</details>

<details>
<summary markdown='span'>
  Solution Ownership
</summary>
* Source System Owner:
  * Salesforce: `@jbrennan1`
  * Zuora:
  * GitLab.com
  * Customers DB
  * Marketo: `@amy.waller`
* Source System Subject Matter Expert:
  * Salesforce: `@jbrennan1`
  * Zuora:
  * GitLab.com
  * Customers DB
  * Marketo `@amy.waller`
* Data Team Subject Matter Expert: `@jeanpeguero` `@jjstark` `@iweeks`
</details>

