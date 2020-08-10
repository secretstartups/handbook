---
layout: handbook-page-toc
title: "Sigstr"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Uses

Sigstr is a marketing tool used as an advertising channel inside the inbox. 

## Training

1. [Sigstr overview video](https://help.sigstr.com/en/articles/1626095-sigstr-overview-video)
1. [Application training tutorial](https://help.sigstr.com/en/articles/2545315-sigstr-application-training-tutorial)
1. [ABM video tutorial](https://help.sigstr.com/en/articles/1118019-abm-video-tutorial)
1. [Dynamic campaigns tutorial](https://help.sigstr.com/en/articles/1118024-dynamic-campaigns-tutorial)
1. [Groups video tutorial](https://help.sigstr.com/en/articles/1118058-groups-video-tutorial)

## Account Settings

### Admin 

From this tab you can view the account owners and admins, set company signature field defaults, set default UTM paramters, and change the default account time zone.

### Recipients

On this tab, you can define the email recipient domains who will receive any campaign designated as internal. This is currently set as `gitlab.com`.

### Transfer ownership

To transfer account ownership, the owner must login and navigate to `Account Settings` > `Ownership`. From this page, click the `Pick New Owner` drop down, select the person whom you will be transferring ownership to, then select `Transfer`.

### Security

Change password or view API keys for third-party integrations.

### Integrations

#### Outreach

Sigstr appends campaign banners to Outreach signatures every 24 hours. If they are changed from Sigstr, campaign banners in Outreach update in real-time. There must be an employee in Sigstr with an email address that matches the user or mailbox in Outreach in order for a campaign banner to be appended.

#### PathFactory

Each Sigstr campaign banner only points to one link. With PathFactory, we can use one link while providing additional content for the receipient to consume.

You can identify who clicks on your email signature banners and track content consumption using PathFactory. Using these insights you can optimize your email signature campaigns and content tracks, while simultaneously identifying highly engaged prospects.

To take the most advantage of this integration, it's recommended that you pair your Sigstr banner campaign with an equally targeted content track. To request a content track for a Sigstr campaign, please open an issue in the marketing operations project using the `pathfactory_request.md` template and assign to `@sdaily`.

### Notifications

Select the type and frequency of system notifications from Sigstr. Daily emails are sent every morning. Weekly emails are sent every Monday morning.

- **Engagement reports** - Emailed daily or weekly and show who has recently clicked a campaign banner. To opt in/out of your individual engagement report email, visit the employee preference center.
- **Install Reminders** - Send reminders to all employees who have yet to install their Sigstr signature. These reminders will be sent automatically based on the selected frequency until the user has successfully installed their signature.
- **Campaign Clicks** - Send real-time notifications to employees anytime someone clicks their Sigstr Campaign banners. These notifications include the date, time, and contact who clicked on the Campaign banner. Employees can opt out of these notifications by editing their profile. This will automatically enable Campaign Click Notifications for new employees added to Sigstr in the future.
    - **Campaign Click Notification Blocklist** - Ignore clicks from some domains (for example, clicks from email security clients). Currently set up to ignore clicks in analytics from GitLab employees.

### Privacy & Data

#### Export Data Archive

Create an archive of a recipient's data from Sigstr. The archive will be emailed within 1-2 business days.

#### Delete Individual Recipient Data

Request to delete a specific email recipient's data. This will delete the click and views recipient data and records if they are on a list. A confirmation email will be sent within 1-2 business days.

#### Data Retention

Configure your account to clear out Sigstr's store of recipient data on regular intervals. This will delete the clicks and views of all affected recipients.

## Default email signature fields

- First name
- Last name
- Job title
- Email address

## Best practices

1. [Campaign design guidelines](https://help.sigstr.com/en/articles/1117946-campaign-design-guidelines)
1. [Campaign use cases](https://help.sigstr.com/en/articles/1641514-campaign-use-cases)
1. [Campaign best practices](https://help.sigstr.com/en/articles/1638530-campaign-best-practices)
1. [GIF best practices](https://help.sigstr.com/en/articles/1638798-gif-best-practices)
1. [Internal use cases](https://help.sigstr.com/en/articles/1638968-internal-use-cases)
1. [Signature design guidelines](https://help.sigstr.com/en/articles/1117943-signature-design-guidelines)
1. [Signature best practices](https://help.sigstr.com/en/articles/1638563-signature-best-practices)

### Banner ad image best practices

The image will be constrained to half the size to ensure high density of pixels. Use the same banner ad size for all campaigns.

- 600-900 pixels wide x 120-240 pixels tall