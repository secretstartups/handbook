---
layout: handbook-page-toc
title: "SQL Style Guide"
description: "A set of conventions and guidelines for writing SQL at GitLab"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

---

## SQL Style Guide

This style guide is generally intended for the Data Team and thous developing within dbt.  If you are not on the Data Team or developing SQL outside of dbt know that the linting tools may be more difficult to apply but you are welcome to follow the guidance given within this guide.

We use SQLFluff to lint the SQL we write.  Wile it will provide guidelines on the structure and general format of the SQL there are additional conventions that we rely on each other to enforce.

### SLQFluff

SQLFLuff is an SQL linter that works with templateing tools like dbt.  We use it to define the basic structure and style of the SQL that we write and move the review of that structure and style in to the hands of the authors.  SQLFluff is included within the dbt development environment as it uses the dbt templateing engine durning the linting process and can be used with the following command:

```console
$ sqlfluff lint models/path/to/file/file-to-lint.sql
```

If you are writing SQL that is not templated using dbt then you can install and use SQLFluff directly as it is a stand alone python package.

```console
$ pip install sqlfluff
$ sqlfluff lint path/to/file/file-to-lint.sql
```

SQLFluff includes a `fix` command that will apply fixes to rule violations when possible.  As not all rule violations are automatically fixable you are encouraged run the the `lint` command after using the `fix` command to ensure that all rule violations have been resolved.

- [SQLFluff Documentation](https://docs.sqlfluff.com/en/latest/index.html)
- [SQLFluff Default configuration](https://docs.sqlfluff.com/en/latest/configuration.html#default-configuration)


### General Guidance

- Do not optimize for fewer lines of code, new lines are cheap but [brain time is expensive](https://blog.getdbt.com/write-better-sql-a-defense-of-group-by-1/).

- Familiarize yourself with [the DRY Principal](https://docs.getdbt.com/docs/design-patterns). Leverage CTEs, jinja and macros in dbt, and snippets in Sisense. If you type the same line twice, it needs to be maintained in two places.

- Be consistent.  Even if you are not sure of the best way to do something do it the same way throughout your code, it will be easier to read and make changes if they are needed.

- Be explicit.  Defining something explicitly will ensure that it works they way you expect and It is easier for the next person, which may be you, when you are explicit in SQL.


### Best Practices

- No tabs should be used - only spaces. Your editor should be setup to convert tabs to spaces - see our [onboarding template](https://gitlab.com/gitlab-data/analytics/-/blob/master/.gitlab/issue_templates/Data%20Onboarding.md) for more details.

- Wrap long lines of code, more than ~80 charters, to a new line.

- Do not use the `USING` command in joins because it produces inaccurate results in Snowflake. Create an account to view the [forum discussion on this topic.](https://community.snowflake.com/s/question/0D50Z00008WRZBBSA5/bug-with-join-using-)


- Understand the difference between between the following related statements as use appropriately:
  - `UNION ALL` and `UNION`
  - `LIKE` and `ILIKE`
  - `NOT` and `!` and `<>`
  - `DATE_PART()` and `DATE_TRUNC()`

- Use the `AS` operator when aliasing a column or table.

- Prefer `DATEDIFF` to inline additions `date_column + interval_column`.  The function is more explicit and will work for a wider variety of date parts.

- Prefer `!=` to `<>`. This is because `!=` is more common in other programming languages and reads like "not equal" which is how we're more likely to speak.

- Prefer `LOWER(column) LIKE '%match%'` to `column ILIKE '%Match%'`. This lowers the chance of stray capital letters leading to an unexpected result

- Prefer `WHERE` to `HAVING` when either would suffice.


### Commenting

- When making single line comments in a model use the `--` syntax
- When making multi-line comments in a model use the `/*  */` syntax
- Respect the character line limit when making comments. Move to a new line or to the model documentation if the comment is too long
- Utilize the dbt model documentation for when it is available.
- Calculations made in SQL should have a brief description of what's going on and if available a link to the handbook defining the metric (and how it's calculated)
- Instead of leaving `TODO` comments, create new issues for improvement

### Naming Conventions


- An ambiguous filed name such as `id`, `name`, or `type` should always be prefixed by what it is identifying or naming:

    ```sql

    SELECT
        id    AS account_id,
        name  AS account_name,
        type  AS account_type,
        ...

    -- vs

    SELECT
        id,
        name,
        type,
        ...

    ```

- All field names should be [snake-cased](https://en.wikipedia.org/wiki/Snake_case):

    ```sql
    SELECT
        dvcecreatedtstamp AS device_created_timestamp
        ...

    -- vs

    SELECT
        dvcecreatedtstamp AS DeviceCreatedTimestamp
        ...

    ```
- Boolean field names should start with `has_`, `is_`, or `does_`:

    ```sql
    SELECT
        deleted AS is_deleted,
        sla     AS has_sla
        ...


    -- vs

    SELECT
        deleted,
        sla,
        ...

    ```

- Timestamps should end with `_at` and should always be in UTC.
- Dates should end with `_date`.
- When truncating dates name the column in accordance with the truncation.

    ```sql

    SELECT
        original_at,                                        -- 2020-01-15 12:15:00.00
        original_date,                                      -- 2020-01-15
        DATE_TRUNC('month',original_date) AS original_month -- 2020-01-01
        ...


    ```

- Avoid key words like `date` or `month` as a column name.

### Reference Conventions

- Avoid table aliasing to improve the readability of the query:

    ```sql
    
    SELECT
        budget_forecast_cogs_opex.account_id,
        date_details.fiscal_year,
        date_details.fiscal_quarter,
        date_details.fiscal_quarter_name,
        cost_category.cost_category_level_1,
        cost_category.cost_category_level_2
    FROM budget_forecast_cogs_opex
    LEFT JOIN date_details
        ON date_details.first_day_of_month = budget_forecast_cogs_opex.accounting_period
    LEFT JOIN cost_category
        ON budget_forecast_cogs_opex.unique_account_name = cost_category.unique_account_name

 
    -- vs 

    SELECT
        a.account_id,
        b.fiscal_year,
        b.fiscal_quarter,
        b.fiscal_quarter_name,
        c.cost_category_level_1,
        c.cost_category_level_2
    FROM budget_forecast_cogs_opex a
    LEFT JOIN date_details b
        ON b.first_day_of_month = a.accounting_period
    LEFT JOIN cost_category c
        ON b.unique_account_name = c.unique_account_name
    ```

- Only use double quotes when necessary, such as columns that contain special characters or are case sensitive. 


    ```sql
        SELECT 
            "First_Name_&_" AS first_name,
            ...

        -- vs

        SELECT 
            FIRST_NAME AS first_name,
            ...

    ```

- Prefer accessing JSON using the [bracket syntax](https://docs.snowflake.com/en/user-guide/querying-semistructured.html#bracket-notation).

    ```sql
        SELECT
            data_by_row['id']::bigint as id_value
            ...
        
        -- vs

        SELECT
            data_by_row:"id"::bigint as id_value
            ...
    ```

- Prefer explicit join statements.

    ```sql
        SELECT *
        FROM first_table
        INNER JOIN second_table
        ...

        -- vs

        SELECT *
        FROM first_table,
            second_table
        ...
    ```


### Common Table Expressions (CTEs)

- Prefer CTSs over sub-queries as [CTEs make SQL more readable and are more performant](https://www.alisa-in.tech/post/2019-10-02-ctes/):

    ```sql
    WITH important_list AS (
        SELECT DISTINCT
            specific_column
        FROM other_table
        WHERE specific_column != 'foo'
    )

    SELECT
        primary_table.column_1,
        primary_table.column_2
    FROM primary_table
    INNER JOIN important_list
        ON primary_table.column_3 = important_list.specific_column

    -- vs   

    SELECT
        primary_table.column_1,
        primary_table.column_2
    FROM primary_table
    WHERE primary_table.column_3 IN (
        SELECT DISTINCT specific_column 
        FROM other_table 
        WHERE specific_column != 'foo')

    ```

- Use CTEs to reference other tables.
- CTEs should be placed at the top of the query.
- Where performance permits, CTEs should perform a single, logical unit of work.
- CTE names should be as concise as possible while still being clear.
    - Avoid long names like `replace_sfdc_account_id_with_master_record_id` and prefer a shorter name with a comment in the CTE. This will help avoid table aliasing in joins.
- CTEs with confusing or notable logic should be commented in file and documented in dbt docs.
- CTEs that are duplicated across models should be pulled out into their own models.


### Data Types

- Use default data types and not aliases. Review the [Snowflake summary of data types](https://docs.snowflake.com/en/sql-reference/intro-summary-data-types.html) for more details. The defaults are:
    - `NUMBER` instead of `DECIMAL`, `NUMERIC`, `INTEGER`, `BIGINT`, etc.
    - `FLOAT` instead of `DOUBLE`, `REAL`, etc.
    - `VARCHAR` instead of `STRING`, `TEXT`, etc.
    - `TIMESTAMP` instead of `DATETIME`

    The exception to this is for timestamps. Prefer `TIMESTAMP` to `TIME`. Note that the default for `TIMESTAMP` is `TIMESTAMP_NTZ` which does not include a time zone.

### Functions

- Prefer `IFNULL` to `NVL`.
- Prefer `IFF` to a single line `CASE` statement:

    ```sql
    SELECT 
        IFF(column_1 = 'foo', column_2,column_3) AS logic_switch,
        ...

    -- vs 

    SELECT
        CASE
            WHEN column_1 = 'foo' THEN column_2
            ELSE column_3
        END AS logic_switch,
        ...
    ```
- Prefer `IFF` to selecting a boolean statement:

    ```sql
    SELECT 
        IFF(amount < 10,TRUE,FALSE) AS is_less_than_ten,
        ...
    -- vs
    SELECT 
        (amount < 10) AS is_less_than_ten,
        ...
    ```

- Prefer simplifying repetitive `CASE` statements where possible:

    ```sql
    SELECT
        CASE field_id
            WHEN 1 THEN 'date'
            WHEN 2 THEN 'integer'
            WHEN 3 THEN 'currency'
            WHEN 4 THEN 'boolean'
            WHEN 5 THEN 'variant'
            WHEN 6 THEN 'text'
        END AS field_type,
        ...

    -- vs 

    SELECT 
        CASE
            WHEN field_id = 1 THEN 'date'
            WHEN field_id = 2 THEN 'integer'
            WHEN field_id = 3 THEN 'currency'
            WHEN field_id = 4 THEN 'boolean'
            WHEN field_id = 5 THEN 'variant'
            WHEN field_id = 6 THEN 'text'
        END AS field_type,
        ...
    
    ```
- Prefer the explicit date function over `date_part`, but prefer `date_part` over `extract`:

    ```sql
    DAYOFWEEK(created_at) > DATE_PART(dayofweek, 'created_at') > EXTRACT(dow FROM created_at)
    ```

- Be mindful of date part interval when using the [`DATEDIFF`](https://docs.snowflake.net/manuals/sql-reference/functions/datediff.html) function as the function will only return whole interval results.

### Example Code

```sql

WITH my_data AS (

    SELECT *
    FROM prod.my_data
    WHERE filter = 'my_filter'

),

some_cte AS (

    SELECT DISTINCT
        id AS other_id,
        other_field_1,
        other_field_2,
        date_field_at,
        data_by_row,
        field_4,
        field_5,
        LAG(
            other_field_2
        ) OVER (
            PARTITION BY other_id, other_field_1 ORDER BY 5
        ) AS previous_other_field_2
    FROM prod.my_other_data

),
/*
This a very long comment: Lorem ipsum dolor sit amet, consectetur adipiscing
elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
ut aliquip ex ea commodo consequat.
*/

final AS (

    SELECT
        -- This is a singel line comment
        my_data.field_1 AS detailed_field_1,
        my_data.field_2 AS detailed_field_2,
        my_data.detailed_field_3,
        DATE_TRUNC('month', some_cte.date_field_at) AS date_field_month,
        some_cte.data_by_row['id']::NUMBER AS id_field,
        IFF(
            my_data.detailed_field_3 > my_data.field_2, TRUE, FALSE
        ) AS is_boolian,
        CASE
            WHEN
                my_data.cancellation_date IS NULL
                AND my_data.expiration_date IS NOT NULL
                THEN my_data.expiration_date
            WHEN my_data.cancellation_date IS NULL
                THEN my_data.start_date + 7 -- There is a reason for this number
            ELSE my_data.cancellation_date
        END AS adjusted_cancellation_date,
        SUM(some_cte.field_4) AS field_4_sum,
        MAX(some_cte.field_5) AS field_5_max
    FROM my_data
    LEFT JOIN some_cte
        ON my_data.id = some_cte.id
    WHERE my_data.field_1 = 'abc'
        AND (my_data.field_2 = 'def' OR my_data.field_2 = 'ghi')
    GROUP BY 1, 2, 3, 4, 5, 6
    HAVING COUNT(*) > 1
    ORDER BY 8 DESC
)

SELECT *
FROM final

```



### Other SQL Style Guides

- [Brooklyn Data Co](https://github.com/brooklyn-data/co/blob/master/sql_style_guide.md)
- [Fishtown Analytics](https://github.com/fishtown-analytics/corp/blob/master/dbt_coding_conventions.md#sql-style-guide)
- [Matt Mazur](https://github.com/mattm/sql-style-guide)
- [Kickstarter](https://gist.github.com/fredbenenson/7bb92718e19138c20591)
