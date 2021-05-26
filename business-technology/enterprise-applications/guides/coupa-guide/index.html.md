---
layout: handbook-page-toc
title: "Coupa Procure-to-Pay, Coupa Pay and Supplier Information Management"
description: "Coupa Procure-to-Pay, Coupa Pay and Supplier Information Management guide"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Business Need

The business had identified the need to optimize the Procure to Pay process with a tool that would allow the creation of Purchase Requests, Purchase Orders, 3-way invoice matching, vendor payments, and accounting protocols for SOX Compliance.

Coupa provides this functionality within one platform and is integrated to decrease procurement approval turn-times and reduce manual workflow delays.

## Business Solution

The business decided to move forward with the implementation of Coupa for the Procurement and Payment Program. Coupa provides these functionalities within one platform and is integrated to decrease procurement approval turn-times and reduce manual workflow delays

In scope for this first delivery is the implementation of Coupa Pay for the US and Netherlands entities.
{: .alert .alert-info}

## What is Coupa

Coupa is a cloud-based purchasing and payment platform that will be used by GitLab as from June 1st 2021 **for the US and Netherlands entities**. It has an easy-to-use interface that will improve the way suppliers connect with GitLab. All new purchase orders, invoices and communications will be managed through the Coupa Supplier Portal.

### How to access Coupa

Coupa is available via Okta. To access the platform:
1. Login to your [Okta home page](https://gitlab.okta.com/app/UserHome#).
1. Click on the Coupa (Prod) button.
   - A new tab should open with your user logged in.

> If you need access to Coupa, please open an [Access Request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new).

## How to use Coupa

### Home Page Overview

ADD IMAGE 1

1. **Home Icon** - This icon will bring you back to the homepage.
1. **Account Name** - contains a number of personal settings related to managing your account in Coupa.
1. **Cart** - This links to your shopping cart, which contains any items selected but not yet submitted for approval.
1. **Search Bar** - Used to search or browse catalog items and create free text requests
1. **Recent Activity** - This displays your 5 most recent transactions. Selecting “View All” will bring you to Activity to display all of your previous requisitions and other transactions.
1. **To Do’s** - displays a list of action items within Coupa that are assigned to you. Selecting View All will bring you to your Coupa Inbox to display all of your to do’s.
1. **Additional Stores (“Punchouts”)** - Offers the possibility to search, select and submit purchases directly from the Supplier’s portal.
1. **Home Page Content** - This will contain important information about Coupa, along with links to training material and other important documents.

### Account Management

ADD IMAGE 2

Account Name contains a number of options related to managing your account in Coupa:

- **Activity**: Displays all of your previous requisitions, related orders, receipts, and invoices.
   - In each transactional tab, you can perform the following:
      - 1. **View**: allows you to quickly apply sets of filters to display reports such as all requisitions, requisitions requiring receipt, draft requisitions, and a number of other pre built reports, along with option of creating custom reports.
      - 2. **Report Scheduling**: allows to set up recurring reports that are emailed to recipients on a regular basis (can be daily, weekly, or monthly).
      - 3. **Advanced**: allows to apply a filter or set of filters to the list of requisitions.
      - 4. **Search**: allows to quickly search all fields on a requisition for a match.
      - 5. **Export**: allows downloading a report in CSV or Excel format based on the current filters applied to the list of requisitions.
      - 6. **Actions**: the icons next to each requisition allow you to edit, copy, cancel, withdraw, and resend requisitions.

ADD IMAGE 3

- **Groups**: Access to Groups setup and allows user to add members in the group he belongs to.
- **Settings**: Contains consolidated personal settings.
   - **General**: The General tab is where you can load a profile photo and check user forms.
   - **Address Book**: Allows you to view your default shipping address and change it as needed (you can also change the shipping address of a particular requisition on the requisition page).
   - **Content**: Allows users to manage tags in Requisitions & Invoices, as well as add product reviews to Catalog Items.
   - **Delegates**: Users can delegate their receiving and approvals to another user by using the Delegates functionality (it is possible to add multiple, overlapping delegates, and enable notifications).
      - Assigned delegates must be of an equivalent or greater management level.
      - For approvals as part of an approval group, the individual must be a member of that group.
   - **Reports**: Users can schedule a report by going to a particular report view and specifying the scheduling details (only certain users will have access to reports and report views are dependent on role).
   - **Notifications**: Coupa notifications can be managed. For each type of notification, the User can choose whether they would like to receive notifications via email (Email), within Coupa (Online), both, or neither.
   - **Two-Factor Authentication (2FA)**: Should be enabled on user profiles to ensure that financial accounts and instruments are protected for control and use by the individual to whom they are intended. This extra authentication layer on the user profile is required before that user can be granted privileged permissions for working with payment features like creating batches for expense and invoice payments, creating accounts, and many other secured payment functions. _Check the [How to enable Two-Factor Authentication (2FA)]() section for more details_.
- **Inbox** - Displays all current and previous notifications.
- **Sign Out** - to exit the application.

### How to enable Two-Factor Authentication (2FA)
1. Go to your Account Name > Settings
2. Click on the Two-Factor Authentication subtab
3. Click the Enable button
4. Use your Google Authentication app to scan the QR Code
5. Enter the 6-digits displayed in the authentication app in the Verification Code field.
6. Click Submit

Anytime you are challenged for a 2FA verification code, just launch your authenticator and enter the latest code.

## How to Create a Free-Form Requisition




{::options parse_block_html="false" /}
