---

title: "Data Guide to Self-Managed Analysis"
description: "This page defines Self-Managed and provides directions for Self-Managed Data Analysis"
---



{:toc}

{::options parse_block_html="true" /}

---

## Self-Managed

**SELF-MANAGED** is a deployment of GitLab that customers manage within their own environment and not within GitLab SaaS. This handbook page on [Choosing between GitLab SaaS and self-managed subscriptions](https://about.gitlab.com/features/) provides a great overview of these two editions.

- Customer Implementations are identified as an Instance.  An Instance can have multiple Installations, ie DEV and PROD.    Each Installation may be hosted on different servers.
- Subscriptions are assigned at the Instance level and determine the Application Features available.  Instance is the highest level of the Self-Managed License so, the features are cascaded down from there.  [GitLab self-managed subscription](https://docs.gitlab.com/ee/subscriptions/self_managed/#gitlab-self-managed-subscription) provides a great overview of the GitLab self-managed subscription and how it is administered.
- Product Usage information is available to the Customer and can be voluntarily sent to Gitlab in collaboration to help enhance the product as outlined in the [Operational Data Vision](https://about.gitlab.com/handbook/customer-success/product-usage-data/).  

### Self-Managed Data Components

- Customer Implementation (Instance)
  - Self-Managed Implementations are identified at the Instance level with an Instance_id. A customer may have multiple Installations per Instance with the same instance id and different Host Names, i.e. Prod, Dev or Other Group.
    - Instance_id is synonymous with `uuid` in Service Ping or `dim_instance_id` in our data models
    - Installations are identified using `dim_installation_id` in our data models
  - Each Instance has a set of features that are cascaded down through all Installations per the License Agreement
- License
  - A single License is assigned to each Customer Implementation (Instance).  The [license key](https://about.gitlab.com/pricing/#how-does-the-license-key-work) gives the authorization to activate and use the product. A [maximum number of users](https://docs.gitlab.com/ee/subscriptions/self_managed/#maximum-users) is assigned for the license period.  Additional users may be added during the License period and handled as [Users over License](https://docs.gitlab.com/ee/subscriptions/self_managed/#users-over-license) during renewal.
- Subscriptions
  - A subscription enables the Features of the product assigned to the Instance.   You can see a full list of features by tier on the [feature comparison](https://about.gitlab.com/pricing/feature-comparison/) page.
- Product Usage
  - [Service Ping](https://docs.gitlab.com/ee/development/service_ping/) -  Service ping data is sent voluntarily from an Instance.  The User and Other Activity is captured as aggregated counts. Since not all customers send service ping data, or send just partial service ping data, there is an [Estimation Algorithm](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html) used for a more wholistic view of the overall usage.
  - Product Usage data and use cases is further described [here](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/product-usage-data/).
  - The systems overview of how the data is brought into GitLab can be seen [here](/handbook/product/analytics-instrumentation-guide/#systems-overview).

## Self-Managed Analysis

### Self-Managed Instances
- [dim_installation](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_installation) - table with Instance_id and Host_id with Host Name
- [dim_license](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_license) - table with license and associated Subscription and Product Tier information
- [dim_subscription](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_subscription) - table with Subscription by Version with Account Information
- [dim_crm_account](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_crm_account) - table with CRM (SalesForce) Accounts
- [map_license_subscription_account](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.map_license_subscription_account) - table to map license, subscription and crm accounts  

<details>
<summary markdown="span">query</summary>

```
SELECT * FROM prod.common.dim_installation ORDER BY dim_instance_id, host_name
```

```
SELECT * FROM prod.common.dim_license ORDER BY license_start_date DESC
```

```
SELECT * FROM prod.common.dim_subscription ORDER BY dim_subscription_id
```

```
SELECT * FROM prod.restricted_safe_common.dim_crm_account ORDER BY dim_crm_account_id
```

```
SELECT * FROM prod.common_mapping.map_license_subscription_account ORDER BY dim_parent_crm_account_id, dim_crm_account_id, dim_license_id, dim_subscription_id
```

</details>

### Self-Managed Product Usage
- [dim_product_detail](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_product_detail) - table with zuro product information and Delivery Type from 'map_product_tier'
  - [dim_product_tier](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_product_tier) - table with all Product Tiers including Current and Historical Names and Delivery Type to Show 'Self-Managed' product Tiers
  - [map_product_tier](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.map_product_tier) - table built manually to define Product Tiers


<details>
<summary markdown="span">query</summary>

```
SELECT * FROM PROD.common.dim_product_detail ORDER BY product_rate_plan_charge_id
```

```
SELECT * FROM PROD.common.dim_product_tier ORDER BY product_tier_name;
```

```
SELECT * FROM PROD.common_mapping.map_product_tier WHERE product_delivery_type = 'Self-Managed' ORDER BY product_rate_plan_name;
```

```
SELECT TOP 5 * FROM PROD.common.dim_ping_instance WHERE ping_delivery_type = 'Self-Managed';
```

</details>



### Self-Managed Growth
- [dim_ping_instance](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_ping_instance?g_v=1&g_i=%2Bdim_ping_instance%2B) - table with Service Ping data by individual ping.  This is an Atomic level table.  


<details>
<summary markdown="span">query</summary>

```
-- Year over Year Ping Count Comparison (counting Last Pings of the Month Only)
WITH ping AS (
    
    SELECT 
        ping.ping_delivery_type,
        date.date_id AS date_month_id, 
        COUNT(1) AS distinct_ping_count
    FROM 
        prod.common.dim_ping_instance   ping
        LEFT JOIN prod.common.dim_date  date
        ON ping.ping_created_date_month = date.date_actual
    WHERE
        ping.is_last_ping_of_month = 'TRUE'                 -- Last ping of the Month for an Installation
    GROUP BY
        ping_delivery_type,
        date_id  

)

SELECT 
    cy_ping.ping_delivery_type,
    cy_ping.date_month_id AS cy_date_month_id, 
    cy_ping.distinct_ping_count AS cy_ping_count,
    --ly_ping.date_month_id AS ly_date_month_id,
    ly_ping.distinct_ping_count AS ly_ping_count,
    --py_ping.date_month_id AS py_date_month_id,
    py_ping.distinct_ping_count AS py_ping_count,
    --ppy_ping.date_month_id AS ppy_date_month_id,
    ppy_ping.distinct_ping_count AS ppy_ping_count
FROM 
    ping                                    cy_ping                 -- current year ping
    LEFT JOIN ping                          ly_ping                 -- last year ping
    ON cy_ping.ping_delivery_type = ly_ping.ping_delivery_type
    AND cy_ping.date_month_id - 10000 = ly_ping.date_month_id
    LEFT JOIN ping                          py_ping
    ON cy_ping.ping_delivery_type = py_ping.ping_delivery_type        -- prior year ping
    AND cy_ping.date_month_id - 20000 = py_ping.date_month_id
    LEFT JOIN ping                          ppy_ping
    ON cy_ping.ping_delivery_type = ppy_ping.ping_delivery_type        -- prior prior year ping
    AND cy_ping.date_month_id - 30000 = ppy_ping.date_month_id
WHERE 
    cy_ping.ping_delivery_type = 'Self-Managed' 
    AND cy_ping.date_month_id BETWEEN 20220101 AND 20220201
```

</details>

### Self-Managed Geolocation
- [dim_location_country](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_location_country) countries mapped to larger regions

<details>
<summary markdown="span">query</summary>

```
SELECT * FROM prod.common.dim_location_country ORDER BY continent_name, country_name
```

```
-- Ping Count by Region, Continent, Country
SELECT 
    dim_location_country.location_region_name_map,
    dim_location_country.continent_name,
    dim_location_country.country_name,
    COUNT(*) ping_count
FROM 
    prod.common.fct_ping_instance
    LEFT JOIN prod.common.dim_location_country
    ON fct_ping_instance.dim_location_country_id = dim_location_country.dim_location_country_id
WHERE
    dim_location_country.location_region_name_map = 'EMEA'
    AND TO_DATE(fct_ping_instance.ping_created_at) >= DATEADD(DAY,-2,GETDATE())
GROUP BY
    dim_location_country.location_region_name_map,
    dim_location_country.continent_name,
    dim_location_country.country_name
ORDER BY
    dim_location_country.location_region_name_map,
    dim_location_country.continent_name,
    dim_location_country.country_name
 ```

</details>
