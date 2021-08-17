---
layout: handbook-page-toc
title: "Gainsight: Go-To-Market Technical Documentation"
description: "This page is the key GitLab Handbook page for all technical documentation relating to Gainsight, including the differnt functions of the tool as well as how we utilize each function to accomplish our integration and automation needs"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Gainsight 
*  Gainsight is a system that our TAMs use in order to support our customers and to manage their workflow. Below, the integration between Salesforce and Gainsight is documented and the applicable rules that sync the data between the systems as well system processes that have been set up withing the system itself.

### Gainsight Rules Engine
*  The Rules engine is a business automation tool build within Gainsight that allows for automation to be built within Gainsight but also to sync out to other systems. It is used in a variety of ways in our instance from enriching data that we bring in from Salesforce (i.e. Company Hierarchies) to Call To Action automatiosn and even syncing data back from Gainsight to Salesforce. More info can be found on the [Rules Engine on Gainsights Website](https://support.gainsight.com/SFDC_Edition/Rules_Engine/About/Rules_Engine_Overview).

### Bi-Directional Syncs: Salesforce <> Gainsight 
*  Bi-Directional syncs between Salesfroce and Gainsight have to be cordinated on a schedule in order to preserve the data integrity between the two systems. In order to acchomplish this we only pull in updated information into salesforce by leveraging date stamps of when our bi-directional fields are updated. After this is complete we push back all of the data to Salesforce so that any information that was updated within Gainsight makes it back to Salesforce. This ensure that both systems have the updated information. 

#### Bi-Directional Rules
*  Bi-Directional Builds
   *  Pull/Push CSM changes: This rule maintains the Technical Account Manager on the acocunt between the two systems.

### Syncing Data from Salesforce to Gainsight
#### Connector 2.0 
*  The `Connectors 2.0` is used as one of the main ingestion methods of data from Salesforce to Gainsight and is a native built integration that exists between the two systems. The connector is authenticated using a Gainsight Integration user in our Salesforce Instance. More information in regards to the connector and how to set it up [in Gainsights Knowledge Base](https://support.gainsight.com/Gainsight_NXT/01Onboarding_and_Implementation/Onboarding_for_Gainsight_NXT_in_Salesforce/Salesforce_Connector/Salesforce_Connector_Overview). 
*  The `Connectors 2.0` is used between our Salesforce instance and Gainsight instance to mainly sync three objects:
   *  Accounts
   *  Contacts
      * The Upsert Key for Contacts is there Email Address. This is useful when it comes to the bi-directional sync of contacts that are created in Gainsight
   *  Salesforce Users
* For a list of fields that are ingested from Salesforce through the Connector 2.0 can be found on [this Google Document](https://docs.google.com/spreadsheets/d/15ppKZ164nRWbDm4LDm0FQBslxS5d8A6S2UJLWFDgzUA/edit#gid=0)

#### Rules Engine
*  While the `Connectors 2.0` are very powerful we also have to supllement the data that is brought in through the connector to correctly display it within Gainsight and to coordinate bi-directional data syncs (and more). The below rules that exist in Gainsight are highlighted and shared in a manner that reflects their use in various Rule Chains in Gainsight. 

##### Admin Daily - Load to Company
*  Admin - Load Ultimate Parent Accounts
*  Admin - Load Non-Customer Child Accounts
*  Admin - Load Prospect Details to Company
   *  The 3 Rules above are built out in order to correctly associate our accounts to one another in a manner that matches our account hierarchy in Salesforce.
   *  CURRENTLY THIS IS ON HOLD AS WE WORK WITH THE TAMS ON IF THIS IS THE FINAL DESIRED.
*  Admin - Set Company Status (Active/Inactive)
   *  This is an Admin Rule that controls which accounts are active in Gainsight. This helps ensure we are not billed extra for accounts that are not customers. 
*  Admin - Load Public Sector Flag
   *  Flags Accounts in Gainsight as Pubcli Sector. This is important for our sharing settings. 
*  Admin - Load Inactive Users (Permission Set Based)
   *  This Rule maintains users status in Gainsight as Active or Inactive. Users access and status in Gainsight is controlled by whether or not they are assigned the `Gainsight NXT` permission set in Salesforce and are also an Active user in Salesforce. 
*  Admin - Load Onboarding Start Date to Company
*  Admin - Load Onboarding End Date to Company
*  Admin - Load First Engagement Date to Company
*  Admin - Load Last Activity Date to Company
   *  The above 4 Rules act as Rollups for Data that exist within Gainsight that native Gainsight Objects
*  Admin - Load Open Zendesk Ticket Count to Company
   *  The above rule acts as a rollup calculation used for ZenDesk Tickets withing Gainsight
*  Admin - License Utilization Calculation
   *  This updates a calcualtion field on the Account Nightly
*  Admin - Delete UnMatch Recrods
   *  This flags accounts that have been deleted from Salesforce (since they were merged or deleted) and that need to be deleted from Gainsight 
*  Admin - Load GS Contacts to SFDC
   * This is the second half of the bi-directional sync of Contacts between Gainsight <> Salesforce. Gainsight pushes Contacts back to Salesforce that do not have an External Contact Id and that have a unique Email address that does not already exist within Salesforce (in order to avoid duplicates). This External Id is then appending by the Connector 2.0 on the next scheduled sync. 
* SFDC RefEdge Reference Status
   * This is pushing to our Reference Profile in SFDC what a Gainsight directed Referenc Status would be. The goal is to get better alignment between the Reference Team and the Customer Success Team and to help decrease the amount of time it takes for the Reference Team to learn of any improvmenets or problems at once of our reference accounts. 


##### Admin Daily - Stage Adoption
*  Admin - Load Stage Counts to Company
*  Admin - Load Aggregated Stage Adoption Data to MDA
   *  The above two rules act as field rollups to calcualte fields within Gainsight
*  Admin - Load Usage Ping Data to Company
   *  This rule is leveraged to associate the lastest usage ping with Accounts in Gainsight 

##### CTAs - Daily
*  CTA - New Account TAM Assignment v2
*  CTA - Onboarding v2
*  CTA - Success Planning v2
*  CTA - Post Onboarding Check-ins
   * These rules are the automations that trigger the various Calls To Action to be created and each have their own criteria

##### Scorecard Rules
*  Set Score - Support Issues
*  Set Score - Load Sentiment Scores from Timeline
   *  These Rules are asscoaited with updating andf maintaining various health scores in  Gainsight. They do not control the overall health score within Gainsight but rather the individual sub-score that is used in the overall rollup of the accounts health score. 

### Syncing Data from Gainsight to Salesforce
*  Data is synced back to Salesforce a few different ways - depending on the object. While Gainsight does have some objects that can automatically sync back to Salesforce through their base integration other objects and data points have to be synced back via the Rules Engine

#### Connector 2.0 
* Activity Timeline is automatically synced back from Gainsight to Salesforce

#### Rules Engine
##### Push to SFDC
*  Pushes a variety of data points back from Gainsight to Salesfoirce. The following Salesforce Fields are populated via this rule that pushes info back from Gainsight to their associated Salesforce account. This Rule Chain had its batch size reduced by 50% for all of the rules in the Rule Chain. This was completed in order to reduce the errors returned from the sync since it was colliding with other jobs in Salesforce. 
   *  [GS] TAM Sentiment :Former Health Score
   *  [GS] Provider
   *  [GS] Geo?
   *  [GS] Google Doc Notes
   *  [GS] Health Score
   *  [GS] Health Score Label
   *  [GS] High Availability?
   *  [GS] Hosting
   *  [GS] Lifecycle Stage
   *  [GS] Architecture Diagram Link
   *  [GS] Customer Type
   *  [GS] Support Issues Measure
   *  [GS] Summary
   *  [GS] Triage Issue URL
*  This rule also pushes back to contacts in Salesforce in the event that anyone in Gainsight marks them as someone who has Opted out of marketing communication
*  This rule also pushes back any contacts that were created in Gainsight and that do not exist in Salesforce.
*  To see a complete list of fields that are synced back from Gainsightto Salesforce review the `Gainsight => SFDC` Tab in [this Google Doc](https://docs.google.com/spreadsheets/d/15ppKZ164nRWbDm4LDm0FQBslxS5d8A6S2UJLWFDgzUA/edit#gid=1617197788)

### Syncing Timing 
*  As a system design Gainsight syncs any updates, new customer accounts etc. up into Gainsight first before pushin information back to Salesforce. 
#### Gainsight `Connector 2.0`
*  User, Company & Company Person Sync 
   *  12:00 AM Pacific Standard time - Everyday
#### Gainsight Rules Engine
*  Admin Daily - Load to Company
   *  3:00 AM Pacific Standard Time - Everyday
*  Admin Daily - Stage Adoption
   *  3:30 AM Pacific Standard Time - Everyday
*  Scorecard Rules
   *  4:00 AM Pacific Standard Time - Everyday
*  CTAs - Daily
   *  4:30 AM Pacific Standard Time - Everyday
*  Bi-Directional Builds
   *  5:00 AM Pacific Standard Time - Weekdays
*  Push to SFDC
   *  5:30 AM Pacific Standard Time - Weekdays
#### Weekend rules
* We leverage a differeent scedule on the wekend in order to avoid conflicts with our other nightly jobs.
*  Push to SFDC
   *  9:00 AM Pacific Standard Time - Weekends
*  Bi-Directional Builds
   *  8:00 AM Pacific Standard Time - Weekends

### Syncing Data from Zendesk to Gainsight
*  Zendesk is synced directly into Gainsight via a `Connectors` (Admin: This is different from the `Connectors 2.0` within Gainsight). 
*  Due to limitations of the integrations between Zendesk, Gainsight and Salesforce it is possible that the sync of tickets is disrupted. Zendesk does not push the Zendesk Organization ID over to Salesforce. To address this a one time upload of Zendesk Organization IDs was compelted in Salesforce ([Zendesk Organization ID (ADMIN)](https://gitlab.my.salesforce.com/00N4M00000Ib2z1?setupid=AccountFields)). This field is then ingested to Gainsights via the Salesforce `Connectors 2.0`. Gainsight then leverages this Organization ID to match Tickets (that are synced over from Zendesk) with Accounts (that are synced over from Salesforce). 
   * There is currently an [open issue](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/761) to address this shortcoming and we are exploring solutions to this. If you find that this limitation impacts your flow the solution would be to re-import Zendesk IDs into Salesforce so that as many accounts have Zendesk Organization IDs associated with them. 
*  The tickets that are seen on the company view within Gainsight are shown their by selecting one report from the dropdown list. As a specific report is seslected the Zendesk Tickets that are associated with that company and that meet the reports filter criteria are shown. This means it is relatively easy to create differnt views of the Zendesl Tickets associated with the account (similar to list views in Salesforce, but thatare specific only to one company)

### Gainsight Roles (Bundles)

Below are the Gainsight bundles (permission sets) and relevant access categories.

| Area                                  | Capability                                                   | `Default Bundle` (Admin role) | `SAL_Users` | `View_Group` | `TAM Journey Orchestrator` | `TAM_Users` | `GS Admin sans provisioning` |
| ------------------------------------- | ------------------------------------------------------------ | ----------------------------- | ----------- | ------------ | -------------------------- | ----------- | ----------- |
| Home                                  | Dashboard view access                                        | ✓                             | ✓           |              | ✓                          | ✓           | ✓           |
| Timeline                              | End user account Timeline history view                       | ✓                             | ✓           | ✓            |                            | ✓           | ✓           |
| Cockpit                               | View and execute Calls to Action (CTAs)                      | ✓                             | ✓           | ✓            |                            | ✓           | ✓           |
| C360 Account                          | View and edit customer Account data                          | ✓                             | ✓           |              | ✓                          | ✓           | ✓           |
| Surveys                               | Access to create surveys                                     | ✓                             |             |              | ✓                          |             | ✓           |
| Surveys                               | Access to analyze surveys and view NPS results                                     | ✓                             |             |              | ✓                          |             | ✓           |
| Admin: Journey Orchestrator           | Administrative access to creating and deploying one-to-many email campaigns | ✓              |             |              | ✓                          |             | ✓           |
| Admin: Data / Integrations Operations | Administrative access for Gainsight customer data and integrations | ✓                       |             |              |                            |             | ✓           |
| Admin: Email Configuration            | Admin access for backend of email domain, including CNAME setup | ✓                          |             |              |                            |             | ✓           |
| Admin: Reporting                      | Admin access to build, share, and modify reports and dashboards | ✓                          |             |              |                            |             | ✓           |
| Admin: Rules Engine                   | Admin access to create rules (workflows) to run CTAs and other operations | ✓                |             |              |                            |             | ✓           |
| Admin: User Provisioning              | Admin access: user provisioning and deprovisioning access    | ✓                             |             |              |                            |             |             |


