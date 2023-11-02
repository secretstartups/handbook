---

title: "Data Guide to Customer Master Prototype"
description: "This page provides the methodology for creating the Customer Master Prototype"
---





{:toc .toc-list-icons .hidden-md .hidden-lg}

---

## Customer Master Prototype

The Customer Master Prototype is defined in the [Customer Happy Paths Direction Page](https://internal.gitlab.com/handbook/finance/customer-happy-paths-direction/). This Definitive Guide provides a detailed overview of the technical implementation of Customer Master Prototype in Snowflake. The Customer Master being defined in source system applications through the [Quote to Cash work stream](/handbook/company/quote-to-cash/); however, it is not fully built in the source system applications yet. The Customer Master Prototype is the first iteration and proof of concept of Customer Master and it has been defined in Snowflake. What follows is a guide to the techinical implementation of the Customer Master Prototype in Snowflake and provides guidance on how to query this data set.

## Training and Enablement

You can reference the [Customer Master Prototype Training and Workshop Deck](https://docs.google.com/presentation/d/1k64KNU-QdfQfBqwTYKMRqXpgJUHMyGC3Mu-N0Q5LQdg/edit#slide=id.g148196257e6_0_0) for training materials.

## Data Dictionary

Please reference the [Happy Paths Direction Page](https://internal.gitlab.com/handbook/finance/customer-happy-paths-direction/) for entity definitions. Some key terms are provided below with links back to the direction page for the definitions.

### Company Entity

Our goal is to map the namespace to a company and its firmographic details. We have 3 different types of company: Salesforce Account, Zoominfo company, and Business email domain.
1. Salesforce Account id:
2. Zoominfo company id: Since Salesforce accounts do not capture all the companies who are using our product or currently are leads, we use Zoominfo (our 3rd party matching company) to find the list of companies that the namespace can be associated with.
3. Business email domain: In cases where we are not able to confidently match all namespaces to a salesforce account id or zoominfo company id, we try to identify the dominant business email domain in the namespace and associate the namespace to this business email domain.

#### Zoominfo Company

This is the Headquaters Company id in the zoominfo database. We map the namespace to a zoominfo company using `NAMESPACE_COMPANY_ID` field in table `PROD.WORKSPACE_MARKETING.WK_MART_NAMESPACE_COMPANY_ACCOUNT`

#### Salesforce Account

We map the namespace to a salesforce account using `NAMESPACE_CRM_ACCOUNT_ID` and `LIST_OF_PARENT_ACCOUNTS` fields in table `PROD.WORKSPACE_MARKETING.WK_MART_NAMESPACE_COMPANY_ACCOUNT`

## Method

Multiple methods are used to identify the relationships that can be used to determine a Unified Customer. These methods brought together known and approximated companies, crm accounts, and email domains for each GitLab SaaS namespace.  This detailed information can be found in the `wk_mart_namespace_company_account` table in the Data Warehouse.

### Subscription Based

The first method used to collect and group information across systems is based on the current GitLab SaaS subscriptions. These subscriptions identify the CRM accounts, Namespaces, and through the CRM account, the company that are related together and act as the source of truth for the known paying customers.  The subscription information is based in the Zuora source system and is built out to the `bdg_namespace_order_subscription_monthly` table in the Data Warehouse for ease of use.

### User Based

The second method used to collect and group information is built on what we know about individual users of the SaaS product.  When the company, crm account, or email domain is known for the users of a namespace, an approximated company, crm account, or email domain of the namespace can be identified. The approximation of a company or crm account is currently based on analysis of paid SaaS namespaces and the extrapolation of various factors and conditions that are then applied to other namespaces. Email domain approximation of a namespace is performed by ranking the number of unique users with that email domain.

The user based approximations start with the what is already known about users that has been collecting in the CRM system. The information is collecting from Salesforce, Marketo, Zuora, and Customers source systems and provides connections between companies, crm accounts, and email domains and is built out into the `dim_marketing_contact` table in the Data Warehouse for ease of use. This information can be combined with SaaS namespace membership information to relate the users to a namespace.

In addition to the information already collected in the source systems, a third party is used to enhance what is known about a user, specifically what company they are likely to belong to. During the first phase of development, a subset of users from non-paid SaaS namespaces were sent to ZoomInfo for enhancement. That information is built out into the `wk_bdg_user_company` so that it can easily be included in further evaluations. It should be noted that this table also includes information from Salesforce leads and contacts so that it can provide a more complete and accurate picture of what companies are associated with users of the product.

When the collected information on a user does not provide a relationship to a company or a crm account the technique of email domain matching is used to provide an approximate company or crm account relationship.

#### Email Domain Matching

Email domain matching is used to identify a crm account for both a user and a namespace and is based on information collected on crm persons and crm accounts. For each crm account the companies of the top 3 email domains are identified; ranked by the number of crm persons with that email domain for a given company and crm account. This is derived from the information collected on the crm person and the crm account they are related to and is built into the `bdg_company_domain_account` table in the Data Warehouse for ease of use. The relationships and ranking identified in this process are used in the following ways to bridge between company, crm account, and email domain when only some of that information is know from an other source:

- Approximate the crm account of a user when the user is not already related to a crm account and is related to a company and email domain.
- Approximate the crm account of a namespace based on the approximated email domain of the namespace, ranking by the ratio of crm persons related to the account that are related to the email domain.


## Entity Relationship Diagram

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embedded/47ab4685-994a-4482-9032-25816d502ec8" id="JwM5PBuTp00x"></iframe></div>

## Use Cases

Provide Problem Statements and Reference SQL to query and answer those statements.

### How to map a namespace to a company entity(Using SFDC account, zoominfo company and namespace email domain):

### How to map a namespace to a salesforce account:

Caveat: Since a company can belong to multiple UPA, you could have the namespace tied to multiple accounts because of that.

<details markdown=1>

<summary><b>Query:</b></summary>

```sql
SELECT
  namespaces.namespace_id,
  SPLIT_PART(accounts.value, ':', 1) AS account_id
FROM prod.workspace_marketing.wk_mart_namespace_company_account namespaces
INNER JOIN TABLE (FLATTEN(namespaces.list_of_parent_accounts)) accounts
WHERE namespaces.list_of_parent_accounts IS NOT NULL
  AND namespaces.namespace_crm_account_id IS NULL
UNION ALL
-- direct account id map.
SELECT
  namespace_id,
  namespace_crm_account_id
FROM prod.workspace_marketing.wk_mart_namespace_company_account
WHERE namespace_crm_account_id IS not NULL
```

</details>


### How to map a namespace to a company id:

Sample query: This pulls the namespace_id, the company id it belongs to and the company name.

<details markdown=1>

<summary><b>Query:</b></summary>

```sql
SELECT
  namespaces.namespace_id,
  namespaces.namespace_company_id,
  compaines.company_name
FROM prod.workspace_marketing.wk_mart_namespace_company_account namespaces
LEFT JOIN prod.workspace_marketing.wk_dim_company compaines
  ON compaines.company_id = namespaces.namespace_company_id
WHERE namespaces.namespace_company_id IS NOT NULL
```

</details>

#### How to additional details about the company firmogrphics data

If you need more information about the company metadata, refer to the fields in `PROD.WORKSPACE_MARKETING.ZI_COMP_WITH_LINKAGES_GLOBAL`

sample query:

<details markdown=1>

<summary><b>Query:</b></summary>

```sql
SELECT
  namespaces.namespace_id,
  namespaces.namespace_company_id,
  zoominfo.headquarters_company_name
FROM prod.workspace_marketing.wk_mart_namespace_company_account namespaces
LEFT JOIN prod.workspace_marketing.zi_comp_with_linkages_global zoominfo
  ON zoominfo.is_headquarters = TRUE
  AND zoominfo.company_id = namespaces.namespace_company_id
```

</details>

## Data caveats:

### Namespaces mapped to multiple UPA:

In the query to map namespaces to Salesforce accounts, sometimes you have a single namespace mapped to multiple Parent account in salesforce. The root cause of this is a zoominfo company id is sometimes mapped to multiple salesforce parent account. This happens for the following reason:
1. More common: There are duplicate parent accounts in salesforce
2. Since salesforce and Zoominfo follows different company hierarchy, we sometimes have one zoominfo company mapped to multiple salesforce parent account
3. Rare: If the salesforce has wrong user entetered information like wrong company domain name, then we have the wrong zoominfo mapped to a salesforce account.
