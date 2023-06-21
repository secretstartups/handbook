---
layout: handbook-page-toc
title: Hightouch
description: Hightouch Overview
twitter_image: /images/tweets/handbook-marketing.png
twitter_site: "@gitlab"
twitter_creator: "@gitlab"
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
  {:toc .hidden-md .hidden-lg}

# <i class="fab fa-gitlab fa-fw" style="color:rgb(252,109,38); font-size:.85em" aria-hidden="true"></i>


## DRIs

| DRI            | Role            |
| -------------- | --------------- |
| Amy Waller     | Business Owner  |
| Mihai Conteanu | Technical Owner |


## Hightouch Handbook - Syncing Data to Iterable

Welcome to the Hightouch Handbook! This documentation page provides essential information on using the Hightouch tool to sync data to [Iterable](/handbook/marketing/marketing-operations/iterable/). As the Marketing Operations Manager, it's crucial to have a reliable and efficient data synchronization process, and Hightouch plays a vital role in achieving that. Let's dive into the key components: syncs, models, sources, and objects.

## Syncs

Syncs are the core of Hightouch's data transfer capabilities. They facilitate the transfer of data from various sources to Iterable. In simple terms, syncs are the operations that keep our data in Iterable up to date. By configuring syncs to meet our needs, we ensure accurate and relevant data for delivering campaigns such as onboarding experiences and nurture emails.

## Models

Models in Hightouch are blueprints for data transformations. With models, we define how data from sources should be structured, mapped, and prepared for syncing with Iterable. They help harmonize and format the data, ensuring consistency and compatibility with Iterable's data model.

Using Hightouch's interface, we can design and configure models. They allow us to manipulate the data by merging fields, filtering records, and creating custom attributes. Models help us gain a deeper understanding of the data and ensure alignment with our marketing goals.

## Sources

Sources represent the data systems and platforms we extract data from for syncing. Hightouch supports various sources, including databases, data warehouses, and third-party applications. By connecting Hightouch with these sources, we simplify the process of pulling data into our syncs and streamline data synchronization.

Hightouch provides pre-built connectors for popular data sources, ensuring smooth integration. Additionally, it offers the flexibility to create custom connectors, allowing us to connect with any source that meets our requirements.

## Objects

Hightouch can sync various types of objects to Iterable, enabling us to leverage a wide range of data in our marketing campaigns. Some of the commonly synced objects include:

1. **Users**: Hightouch can sync user profiles, attributes, and events to Iterable, providing a holistic view of each user. This data is essential for creating personalized and targeted campaigns.

2. **Events**: By syncing events, Hightouch allows us to track user interactions and behaviors. This data can be utilized to trigger specific marketing actions or segment users based on their engagement.

3. **Segments**: Hightouch can sync dynamic segments to Iterable, ensuring that the most up-to-date user groups are available for our campaigns. This enables us to target specific segments with tailored messaging.

By syncing these objects and more, Hightouch empowers us to deliver highly personalized and engaging experiences to our users through Iterable.

## Monthly Queried Records (MQR)

Each time a sync runs in Hightouch and records are queried, it consumes MQRs. For the same record queried multiple times during the billing period it only counts as one. 
Please note that we have a limit of 1.5 million Monthly Queried Records (MQRs) per billing period. 

## Current Setup

1. Main sync - `Iterable-Production`

Refreshes every 24 hours to update user profiles in Iterable. Only syncing records that have a `GitLab Create Date` in the past one month and exist in Iterable. 

2. Main sync SQL

```
SELECT
  *
FROM
  SENSITIVE.POC_PUMP_MARKETING_CONTACT_NAMESPACE_DETAIL
WHERE
  TO_DATE(GITLAB_DOTCOM_CREATED_DATE) > DATEADD(MONTH, -1, GETDATE())
  AND GITLAB_DOTCOM_LAST_LOGIN_DATE IS NOT NULL
  AND GITLAB_DOTCOM_ACTIVE_STATE IS NOT NULL
  AND NAMESPACES_ARRAY IS NOT NULL
  ```
