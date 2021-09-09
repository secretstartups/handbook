---
layout: handbook-page-toc
title: "Team Member Separations"

---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page

- TOC
{:toc}

{::options parse_block_html="true" /}

---
## Team Member Separations Report

This report identifies all separated team members. Note: This data is accessible only in snowflake to users with the bamboohr_sensitive_separation role in [roles.yml](https://gitlab.com/gitlab-data/analytics/-/blob/master/permissions/snowflake/roles.yml). This data is not accessible in Sisense.


    Data can be access by running:

    ```
    SELECT *
    FROM "PREP"."SENSITIVE"."BAMBOOHR_SEPARATIONS"
    ```

## Getting Access
To get access to this report you will need to create an access request to get access to:
  1. Snowflake
  2. Access to `bamboohr_sensitive_separation` role.

This access request should be reviewed by the people team - Total Rewards Manager or Senior Director, People Success.  
