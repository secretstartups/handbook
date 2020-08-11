---
layout: handbook-page-toc
title: "Zoominfo"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Set Up
Once you receive your login and enter the Zoominfo platform you will need to download the [Zoominfo ReachOut Chrome extension](https://chrome.google.com/webstore/detail/zoominfo-reachout/fofjcndophjadilglgimelemjkjblgpf). You can also find the link by navigating down to the bottom right of your homepage.

Your homepage is customizable to your needs. Saved searches, technology alerts, Scoops, and resources are available on the homepage.

### Training
To access Zoominfo training sessions specific for GitLab follow [this link](https://university.zoominfo.com/courses/gitlab-inc-recorded-trainings).

-   101: Introduction to ZoomInfo focuses on the fundamentals of navigating and leveraging the ZoomInfo platform.
-   102: Best Practices with ZoomInfo will give you role-specific training and best practices for leveraging ZoomInfo's data. Relying on the knowledge from the 101 training, you will take a deeper dive on how to leverage and use the data successfully.

To access Zoominfo on-demand training follow [this link](https://university.zoominfo.com/pages/on-demand-training).

### Credits
**Users** -  Monthly credits are set at 1,000 and bulk credits are set at 2,000. 
Each user has 1,000 monthly credits to use for prospecting. A credit is consumed any time a user exports a contact or company out of the platform. These credits reset on the first of each month. When a user pushes "export" it should automatically pull from the monthly credits until a user has utilized all 1,000 of their monthly credits. After those monthly credits are consumed you are then able to use the bulk credits. Bulk credits are adjustable. Monthly credits are not. A user also has 2,000 views in which they can use to click on a contact and view/unlock the contact information.
**Accounts** - Max number of accounts a user can export to SFDC is set to 100.
**Contacts** - Max number of contacts a user can export to SFDC must match accounts and is set to 100. This is because contacts MUST be associated with accounts in SFDC. When exporting a contact, Zoominfo will check to see if an Account exists within SFDC that matches the company the contact works at. If not, users can create a new account which they will associate the contact to. Enforcing that contact creation is equal to or less than accounts is to make sure there is not a scenario where a contact export fails because they are unable to create the same number of accounts.
**Leads** - Max number of leads a user can export to SFDC is set at 1,000. This ensures that the user will not max out their monthly allotment in one export.
**Bulk requests** If a bulk download is needed for a campaign, please open an [issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new) for the marketing operations project. Admins have unlimited credits to be able to export bulk lists or a temporary lift can be made for individual users.

### Field Mappings
All current field mappings are documented [here](https://docs.google.com/spreadsheets/d/1lZ2BgNER_OYR5jjYDHreCMRbpODQbprUpGKVRD5TMnY/edit#gid=504148174). 
Custom fields start with [ZI] and will be visible in the Zoominfo section in SFDC. Example name: `[ZI] Company Phone`. All [ZI] fields are set to be able to overwrite the field should new data be available on a lead, contact, or account. The only information mapped to standard fields are fields needed for basic lead, contact, or account creations. Example: `First Name`, `Last Name`, and `Email Address`.

### SFDC Native Integration
The native integration is available on any lead, contact, or account directly within SFDC. The functionality is the exact same as logging directly into Zoominfo.

### Outreach Integration
Coming soon.
