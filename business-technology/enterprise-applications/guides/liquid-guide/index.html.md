---
layout: handbook-page-toc
title: "TripActions Liquid End Users Guide"
description: "TripActions Liquid End Users Guide"
---

{::options parse_block_html="true" /}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What is TripActions Liquid

TripActions Liquid is an expense and payments platform that improves managing expenses while you’re on the road.

### How to access TripActions Liquid

**BROWSER**

TripActions Liquid is available via Okta. To access the platform:
1. Login to your [Okta home page](https://gitlab.okta.com/app/UserHome).
2. Find the `TripActions` tile.
   - _TripActions should open in a new tab with your user logged in._
3. Click on `Travel | Book` at the top-left corner of the page.
4. Select `Expenses` under LIQUID. 

**MOBILE APP**
1. Download the app from your preferred [mobile app store](https://app.tripactions.com/app/liquid/user/redirect). 
   - The TripActions Liquid mobile app is compatible with iOS 15 or later.


For more information on how to use the mobile App, check the [Using the TripActions Liquid™ Mobile App](https://community.tripactions.com/s/article/getting-started-liquid-app) article.
{: .alert .alert-warning}


## TripActions Liquid - Getting Started

### How to connect my personal banking details to Liquid

TripActions Liquid™ users have the option of connecting their personal bank account or personal cards to the TripActions Liquid app for quick and easy submission of manual expenses, or reimbursement for out-of-pocket expenses.

If your personal bank account is not able to be connected, you will be reimbursed according to GitLab's regular payroll process.

> Check the _[How do I connect my personal banking information to TripActions Liquid™?](https://community.tripactions.com/s/article/connecting-banking-to-liquid)_ article to learn how to connect your card or account.

Please note that you can link only one account at a time. To add a different account for reimbursements, you must first unlink the existing account.
{: .alert .alert-warning}

### How to submit a manual transaction for an out-of-pocket expense

Business transactions paid for in cash or charged on a personal card can be imported for reimbursement through the TripActions Liquid™ mobile app, known as manual expensing. Manual expenses will be automatically approved for reimbursement if they are compliant with the policies assigned to you or submitted for review to the Accounts Payable team if they are out-of-policy.

There are several ways to submit for reimbursement and all manual expenses can be saved as a draft before submitting:
- **Receipt scanner:** Take or upload a photo of your receipt, and all relevant details will auto-populate into the corresponding fields.
- **Personal card import:** Link your personal card(s) and import transactions for reimbursement.
   - Note: This option is only available to users with a United States-based bank account. 
- **Manually type in expenses:** Manually type in your transaction details if you cannot link a personal card or have misplaced your receipt. 
- **Receipt Import:** Email TripActions (liquid-receipts@tripactions.com) a copy of your receipt(s) and they will automatically be added to an existing TripActions Liquid transaction or created as a transaction draft.

**Note:** Receipts need to be forwarded from your GitLab email to _liquid-receipts@tripactions.com_ in order to be attached to your Liquid account. After sending the email, the receipt should show up within a few minutes to a few hours.
{: .alert .alert-info}

#### Receipt Scanner

To upload a receipt, tap `+New transaction`, then `Scan a receipt`. Upload or take a picture of the receipt. For information on uploading multiple receipts for the same transaction, check the _[How to upload multiple receipts for the same expense](/handbook/business-technology/enterprise-applications/guides/liquid-guide/#how-to-upload-multiple-receipts-for-the-same-expense)_ section.

When uploading a receipt image, most of the required transaction information will auto-populate. It is recommended that you review the final numbers and transaction details before submitting your expense to ensure accuracy.

![liquid-image-11](/handbook/business-technology/enterprise-applications/guides/liquid-guide/receipt-scanner.png)

Note: You will need to grant the TripActions Liquid app access to your phone's camera or camera roll in order to take or access a saved picture of your receipts.
{: .alert .alert-warning}

#### Import from Personal Card (For US banks only)

To receive reimbursement for a business transaction charged to a personal card, tap `+New transaction` and select `Import from personal card`. If you have not previously linked your personal card(s) check the _[How to connect my personal banking details to Liquid](/handbook/business-technology/enterprise-applications/guides/liquid-guide/#how-to-connect-my-personal-banking-details-to-liquid)_ section for detailed instructions. Once your card is linked, select from the transactions shown on the `Import and submit` screen and submit for reimbursement. 

![liquid-image-12](/handbook/business-technology/enterprise-applications/guides/liquid-guide/import.png)

Tip: If you have recently been on a trip booked through TripActions and would like to be reimbursed for a trip-related expense, toggle `View by trips` on to view only transactions that occurred on the date(s) of your trip(s).
{: .alert .alert-info}

#### Manually Type in Expenses

If you have not linked your personal cards to your profile or if a receipt was misplaced or not provided, tap `+New transaction`, select `Type in details` and input your expense details. Please note that a receipt must be submitted as expenses may not be approved for reimbursement when a receipt is not included.

![liquid-image-13](/handbook/business-technology/enterprise-applications/guides/liquid-guide/manually-type.png)

#### Receipt Import

Receipt forwarding allows TripActions Liquid users to have forwarded receipts matched with an existing transaction and simplifies the manual expense submission process by having transaction details automatically filled in. Receipts sent to TripActions will be imported and analyzed, allowing you to simply review the transaction details and submit. Check the _[How to automatically add a receipt to a TripActions Liquid transaction](/handbook/business-technology/enterprise-applications/guides/liquid-guide/#how-to-automatically-add-a-receipt-to-a-tripactions-liquid-transaction)_ section for more details.

> Check the _[How do I submit a manual transaction for an out-of-pocket expense?](https://community.tripactions.com/s/article/How-do-I-submit-out-of-pocket-expenses)_ article for more details on the ways to submit a manual transaction.

#### Saving as a draft
- After beginning a manual expense, tap `Save & close` to save the transaction and to have it moved to your `Drafts` folder.
- Transaction drafts can be accessed and modified at any time until you decide to submit or delete them. 

![liquid-image-10](/handbook/business-technology/enterprise-applications/guides/liquid-guide/draft.png)

### Reimbursement Process

Transactions submitted for reimbursement can be tracked from the `My reimbursements` folder. They will fall into four categories: `Submitted, Scheduled, Deposited, and Rejected`. If you have linked your personal bank account to your profile, you will receive reimbursement via direct deposit when manual expenses are approved. If your personal bank account is not linked, you will be reimbursed according to GitLab's regular payroll process.

![liquid-image-14](/handbook/business-technology/enterprise-applications/guides/liquid-guide/reimbursement-process.png)

### How to modify transaction details for a submitted expense

Modify transactions to provide additional details, such as adding a receipt, linking associated trips, modifying the expense type, or adding participants. This includes transaction drafts, submitted expenses that are pending review, or when your company's TripActions Liquid admin has requested additional information.

#### Accessing Transactions Details 

Transactions are organized into folders based on transaction type. Select a folder to view all transactions that fall under the transaction type, then choose a transaction to modify the transaction details following the steps below:
- Navigate to the `My transactions` section of your TripActions Liquid mobile app .
- Select a folder based on the different transaction types: 
   - **Drafts:** Transactions created from the receipt forwarding feature or manual transactions that are saved but not submitted yet.
   - **Manually added:** Transactions submitted for out-of-pocket expenses.
- Choose the transaction you would like to modify or withdraw and proceed with any of the changes outlined below.

#### Add Participants

Participants can be added to certain transaction types to provide your company admin or manager with additional context around your spend. For example, you may wish to add participant information to your transaction for a team event, meal or a transaction for an UberXL where multiple passengers were present to justify a higher cost. To add a participant(s): 
- On the transaction details page, select `Edit` and tap the `Pencil icon` next to Participants.
   - Note: If you do not see the participants field, this indicates the transaction type is not eligible to have this information submitted.
- A Search box will appear where you can type in the name of each participant.
   - Other TripActions users from your company will appear on the list of participants to select from, and their information will be pre-populated.
   - To add participants outside of your company, such as customers or guests, use the `+` icon to enter the new participant's information (first name, last name, and email address).
- Tap `Done` to save your changes.

![liquid-image-1](/handbook/business-technology/enterprise-applications/guides/liquid-guide/add-participants.png)

#### Add a Receipt

Depending on your assigned policy, you may be required to attach a copy of your receipt to an expense. If you did not submit a required receipt with your transaction initially, you can add it by scrolling to the bottom of any transaction detail page and selecting `Upload` under the `Receipt` section.

> For instructions on how to upload multiple receipts to the same transaction, check the _[How to upload multiple receipts for the same expense](/handbook/business-technology/enterprise-applications/guides/liquid-guide/#how-to-upload-multiple-receipts-for-the-same-expense)_ section.

![liquid-image-2](/handbook/business-technology/enterprise-applications/guides/liquid-guide/upload-receipt.png)

#### Add or Edit a General Ledger (GL) Code

GitLab uses GL codes to map and track spend for specific types of expenses. If the system admins have provided you with the ability to add or edit the GL code associated with your transaction, you will be able to do so at the time you are submitting your transaction (for manual/out-of-pocket expenses). To add or edit a GL code, find the appropriate transaction and follow the steps below: 
- On the transaction details page, select `Edit` and tap the `Pencil icon` next to `GL code`.
- Search for a GL code or scroll through the list provided.
- Select a GL code and click `Save`.
- Tap `Done` on the transaction detail page.

![liquid-image-3](/handbook/business-technology/enterprise-applications/guides/liquid-guide/change-gl.png)

#### Link a Related Trip

For manual (out-of-pocket expenses), you will need to ensure business trips are associated with corresponding travel booked on the TripActions platform and that the information is correctly entered before submitting your expense. This information provides your administrator or manager with more context around your spend. To associate an expense with a trip, follow the steps below:
- On the transaction details page, select `Edit` and tap the `Pencil icon` next to `Trip`.
- TripActions Liquid will provide a list of suggested trips booked in TripActions for you to select from.
- Once a trip has been selected, tap `Done` to save your changes.

![liquid-image-4](/handbook/business-technology/enterprise-applications/guides/liquid-guide/related-trip.png)

#### Withdraw a Transaction

If you submit a manual transaction for an out-of-pocket expense that is not compliant with your assigned expense policy, it will be flagged for review by your expense approver. These transactions will be marked as `In review` and can be found in the `Manual` folder of the `My Transactions` section. If you would like to withdraw one of these transactions before your approver has taken action, you may do so by following the steps below: 
- On the transaction details page, select `Withdraw transaction`.
- A popup window will appear, asking you to confirm your action; click `Withdraw` to permanently delete the transaction.

Once a transaction has been withdrawn, it will no longer appear on the admin's dashboard or under your transaction history.

![liquid-image-5](/handbook/business-technology/enterprise-applications/guides/liquid-guide/withdraw.png)

> Check the _[How do I modify transaction details for a TripActions Liquid™ expense?](https://community.tripactions.com/s/article/modifying-submitted-expense)_ article for more details on how to modify a manual transaction.

### How to upload multiple receipts for the same expense

Business expenses paid for in cash or charged on a personal card can be imported for reimbursement as manual transactions through the TripActions Liquid mobile app and users are require to attach a receipt for all manual transactions submitted for reimbursement. In certain instances, you may need to upload multiple receipts to the same transaction. Read below to learn how. 

#### New Transactions

To submit a manual expense with multiple receipts, open the TripActions Liquid mobile app, tap `+New transaction`, then follow the steps below: 
- Select `Scan a receipt` and click `Multi` on the receipt scanner to begin taking photos and uploading them into the app. Alternatively, you can click the `landscape icon` at the bottom left-hand corner of the receipt scanner to upload saved receipts or PDFs.
- As you take each photo or add a saved image, you will see a thumbnail on the top right side of the screen with the number of photos taken. Click here to choose which photos you would like to use. Use the `trash can` to remove a photo from your selection or the `crop icon` to edit.
- After reviewing your photos, click the `Use photos` button. This will direct you back to the expense screen, where you can finish inputting the transaction details.

![liquid-image-6](/handbook/business-technology/enterprise-applications/guides/liquid-guide/new-transactions.png)

#### Submitted Transactions

To attach multiple receipts to transactions that have already been submitted, follow the steps below:
- Navigate to the `My transactions` section in the TripActions Liquid mobile app, then `Liquid card`.
- Find and select the transaction you would like to add your receipts to.
   - If you have not uploaded any receipts, click on `upload` and select `Multi` on the receipt scanner.
   - If you need to add more receipts to a transaction that already has a receipt(s) attached, click `more` and select the method you would like to upload (`Add photo` or `Add PDF`), and continue to click more to attach more than one receipt.

![liquid-image-7](/handbook/business-technology/enterprise-applications/guides/liquid-guide/submitted-transactions.png)

> Check the _[How do I upload multiple receipts for the same expense?](https://community.tripactions.com/s/article/How-do-I-import-multiple-receipts-for-the-same-expense)_ article for more details.

### How to itemize a transaction in TripActions Liquid™

TripActions Liquid provides you with the ability to automatically split a single transaction into multiple items, allowing for the assignment of expense types, GL codes, custom fields, and the approval or rejection of the transaction by the admin on a per-item basis. A common use case for itemization is hotel expenses, where certain charges should be covered by GitLab (i.e. the hotel's nightly rate or parking cost) while others should be covered with your personal funds (i.e. spa services utilized at the hotel).

Users can itemize their own manual transactions at any time **before they have been submitted** or after submission only if a transaction has been flagged for review by the system admin and has not yet been actioned by them.
{: .alert .alert-warning}

#### Itemizing a manual transaction during expense submission [non-lodging expense types] 

- Start submitting a manual transaction.
- Once you reach the receipt upload portion, use the receipt scanner to auto-fill your transaction details.
   - The scanner will fill in as much information as can be recognized on the receipt. Any information not recognized will need to be input manually. The receipt scanner will also automatically create a separate line item for each item listed on the receipt.
- Once your transaction details have been input, tap `Itemize`. 
- You will be taken to the `Manage items` page where you can add details for each item as prompted, change the expense type if needed, delete an item, or mark an item as a personal expense to remove it from the portion to be submitted for reimbursement. 
- To itemize further, select `Add item` or tap `Save` to finish and submit your transaction. 

![liquid-image-8](/handbook/business-technology/enterprise-applications/guides/liquid-guide/itemize1.png)

#### Itemizing a manual transaction during expense submission [lodging expense type]

The process for itemizing a manual transaction for lodging expenses will remain the same as outlined above, but you will be prompted to fill out several additional fields for the transaction including hotel check-in and check-out dates, cost of stay, and nightly rate. 

#### Itemizing a manual transaction after expense submission

Manual transactions will be automatically approved once submitted if they fall within the parameters of your assigned expense policy and cannot be itemized once approved (unless done by an admin). However, if a submitted non-itemized manual transaction has been flagged for review by the system admin for being non-compliant with your assigned expense policy, you will have the opportunity to itemize it if desired before it has been actioned by the admin. To do so: 

- Tap the `In review` tile on the homepage of your TripActions Liquid mobile app. 
- Locate the transaction you would like to itemize. 
- Select `Itemize` and follow the same steps outlined in the [Itemizing Manual Transactions section](). 
- You can continue to `Edit` the itemization for the transaction until it is actioned (approved or rejected) by the system admin. 

> Check the _[How do I itemize a transaction in TripActions Liquid™?](https://community.tripactions.com/s/article/Liquid-Itemization-End-User)_ article for more details.

### How to automatically add a receipt to a TripActions Liquid transaction

Receipt forwarding allows TripActions Liquid users to automatically have a receipt matched with an existing transaction and simplifies the manual expense submission process by having transaction details automatically filled in. Receipts sent to TripActions will be imported and analyzed, allowing you to simply review the transaction details and submit.

#### Emailing Receipts to TripActions
Receipts emailed to TripActions will be scanned and the transaction information imported to your TripActions Liquid account. Receipts that match an existing transaction will automatically be added to the expense, or a new transaction draft will be created with the receipt and transaction details. To import a receipt, email a copy of your receipt to liquid-receipts@tripactions.com from the email address registered with TripActions. Once received, a push notification (if enabled on your device) will confirm that your receipt was successfully imported and inform you of its status: 
- **Successful receipt/transaction match:** Shortly after emailing your receipt, you will receive a push notification that your receipt has been matched with an existing TripActions Liquid transaction. Click the notification to be directed to the transaction, or navigate to the `My Transactions` section to view the transaction that the receipt was added to. Review the transaction to confirm that all of the information is correct.
- **Draft created:** Shortly after emailing your receipt, you will receive a push notification that your receipt has been imported and that a transaction draft has been saved in the `Drafts` folder. Open the transaction to review, fill in all required fields, and submit.

If the receipt import is attached to the wrong transaction or if it needs to be replaced, see the next section, [Managing Imported Receipts](/handbook/business-technology/enterprise-applications/guides/liquid-guide/#managing-imported-receipts), for instructions.
{: .alert .alert-warning}

<div class="panel panel-info">
**IMPORTANT NOTE**
{: .panel-heading}
<div class="panel-body">

All receipts contained in each email will be cataloged as one transaction. If you need to submit receipts for more than one transaction, forward them as separate emails.

</div>
</div>

#### Managing Imported Receipts

From a receipt's `More` menu, you have the ability to move the receipt to another transaction or to replace it. You can also choose to add additional photos, add a PDF, save the receipt, or delete the receipt from the transaction. 

**Moving a receipt to another transaction**

- Open your `Drafts` folder and select a transaction.
- Tap the `ellipsis` menu (three dots) on the corner of the receipt.
- Select `Move receipt to another transaction`.
- Use the search bar or scroll through the list to locate a transaction to add the receipt to.
- Tap `Move`.
- The next screen will confirm that the receipt was successfully attached to a different transaction. Use the checkbox to indicate if you would like to delete the original transaction draft.
 
**Replacing a receipt**

- Open your `Drafts` folder and select a transaction.
- Tap the `ellipsis` menu (three dots) on the corner of the receipt.
- Select `Replace receipt`.
- Your device's camera will open and allow you to take a picture of a new receipt. Tap `Use photo` to import the new receipt into the transaction.
- Review the transaction details and choose `Delete, Save & close`, or `Submit`.

![liquid-image-9](/handbook/business-technology/enterprise-applications/guides/liquid-guide/replace_receipt.png)

> Check the _[How do I automatically add a receipt to a TripActions Liquid™ transaction?](https://community.tripactions.com/s/article/add-receipt-to-transactions)_ article for more details.

### How to connect Google Calendar to TripActions Liquid™

When calendar integration is enabled, this integration captures information from your calendar about events that are relevant to your card transactions (such as name, location, and participants) and automatically completes transaction details.

To connect your calendar, access your profile by tapping the `Profile` icon located in the top-right corner of the app, select `Calendar Integration` and enable your Google calendar.

### How to submit a mileage reimbursement request

TripActions Liquid provides a quick and simple way to get reimbursed for mileage driven for business in your personal vehicle. The expense policy assigned to you for on-the-job expenses by the Liquid Admin Team will determine your mileage reimbursement eligibility.

Mileage is only available in the TripActions Liquid Mobile App. Download the app from your preferred [mobile app store](https://app.tripactions.com/app/liquid/user/redirect). 
{: .alert .alert-warning}

#### Submitting a Mileage Expense (Available on the mobile app only)

To submit a request for mileage reimbursement, tap `+New transaction`, then `Log distance driven`. Proceed with completing your trip details.

- You can enter in your drive origin and destination using Google maps and select your route, or enter this information in manually. Your distance driven and total reimbursement amount will be automatically calculated.
- Your reimbursement amount is calculated based upon the total distance traveled multiplied by the mileage rate reimbursed by GitLab (click into the `Information` icon next to `Total` to see this value).
- Lastly, you will enter in your `Date of travel` (required) and any additional details to provide your Liquid Admin Team with more details and context for your expense (optional). 

**Note:** If you do not see the option to Log distance driven, this indicates that your company has not assigned you to an expense policy that allows for mileage reimbursement. Contact your Liquid Admin Team for more information. 
{: .alert .alert-info}

#### Reimbursement Process
For information on the reimbursement process for mileage submitted, see the _[Reimbursement Process](/handbook/business-technology/enterprise-applications/guides/liquid-guide//#reimbursement-process)_ section.

### Repayments for Out-of-policy Expenses

Transactions charged to a physical TripActions Liquid™ card that violate the expense policy assigned to you by GitLab will be reviewed by the Accounts Payable team. Once reviewed, the approver may choose to reject the expense and request that you repay the company for the full transaction amount or a partial amount. Alternatively, if you are aware that a transaction will require repayment, you can make a payment before your approver reviews the transaction. Repayments can be processed directly through the TripActions Liquid mobile app.

> Check the _[How can I repay my company for out-of-policy expenses?](https://community.tripactions.com/s/article/making-a-repayment)_ article for more details.

### Utilizing the TripActions Liquid Manager Dashboard

The TripActions Liquid Manager Dashboard gives managers an at-a-glance view of their direct reports' transaction activity and spend data, as well as the ability to review transactions. The Manager Dashboard can be accessed from the TripActions desktop browser by clicking on `Travel | Book > Liquid | Manager`. The page has four main components and filters to narrow your search.

**Activity**

The Activity tab provides an overview of all transaction activity. Choose `TripActions Liquid transactions` to view all activity from TripActions Liquid physical cards and virtual cards, or select `Manual transactions` to view all expenses submitted for reimbursement.

**Analysis**

The Analysis section of the Liquid Dashboard provides an overview of their company's business spend including transactions charged to a TripActions Liquid physical, virtual, and purchase card, as well as transactions submitted for manual reimbursement. Managers can use this information to: 

- Group and visualize total spend and number of transactions.
- View a breakdown of different charge types (i.e. physical card vs. manual transaction) to see which methods are being used to submit expenses.
- Filter data across different time frames, groups, and issuing currencies.

Use the `Filters` at the top of the page to adjust the `Spend overview`. You have the ability to filter by time period, group, expense type, issuing currency, individual user, and more. 

To access the dashboard, navigate to `Travel | Book > Liquid | Admin > Analysis`. The `Overview` page will display your company's total spend categorized by charge type. Charge types are the different ways that employees can submit an expense in TripActions Liquid. You will see a breakdown of each (if applicable): 

- **Physical Cards:** The total posted amount and number of transactions charged on TripActions Liquid physical cards.
- **Virtual Cards:** The total posted amount and number of transactions for travel spend charged on TripActions Liquid virtual cards.
- **Manual Transactions:** The total amount and number of approved transactions submitted manually for out-of-pocket expenses.

![liquid-image-16](/handbook/business-technology/enterprise-applications/guides/liquid-guide/spend.png)

**Users**

The Users tab allow managers to view their direct reports' employee data such as their issuing currency, cost center, and more. Click on a user's name to view additional information including their transaction history and policy assignment. In addition to the Activity tab, designated approvers can review, approve, reject, and request more information for a transaction directly through a user's transaction history.

**Note:** Users designated as a manager on the TripActions user list will have access to the Manager Dashboard. If you do not see a Manager Dashboard option available, either you do not have any assigned direct reports or your direct reports do not have any spend activity. 
{: .alert .alert-info}

> Check the _[Utilizing the TripActions Liquid™ Manager Dashboard](https://community.tripactions.com/s/article/Liquid-Manager-Dashboard)_ article for more details.

## TripActions Liquid Frequently Asked Questions (FAQ)

#### What happens if I enter incorrect bank account information? 

Account information is validated upon submission. However, we cannot validate that it is the correct account for you. Please ensure that you enter your bank account information correctly. TripActions is not liable for money sent to the wrong account.

#### What if I have a bank account transacted in currency outside of those supported?

If your bank account's currency is not currently supported or you wish to not link your bank account for other reasons, you can still receive reimbursements through GitLab's payroll. For details on GitLab's payroll cycle and process, contact the Accounts Payable Team. 

#### What if I don't want to link my personal card? How can I make repayments to my company? 

If you do not link your personal card to TripActions Liquid and you owe GitLab a repayment for an expense that was not approved, you will need to connect with the Accounts Payable Team to determine the best method for repayment.

#### In what countries are direct reimbursements available? 

Direct reimbursements are currently available for employees with bank accounts created in the following countries: Andorra, Australia, Austria, Belgium, Brazil, Canada, Croatia, Cyprus, Czech Republic, Denmark, Estonia, Finland, France, Germany, Gibraltar, Greece, Hong Kong, Hungary, India, Indonesia, Ireland, Italy, Japan, Latvia, Lithuania, Luxembourg, Malaysia, Malta, Mexico, Monaco, Netherlands, New Zealand, Norway, Philippines, Poland, Portugal, Romania, San Marino, Singapore, Slovakia, Slovenia, South Korea, Spain, Sweden, Thailand, Turkey, United Kingdom, USA, Vietnam.

#### Is it required that I include participants on my transactions?

While it is not required, adding participants to your transactions will give your Admin Team a better understanding of cost per person and help provide justification for more costly expenses. 

#### If I add colleagues to my transaction as participants, whose policy will be applied?

Adding participants to a transaction will not affect which policy is applied. Any transactions that you submit, regardless of participants entered, will be subject to the parameters set by your own assigned policies.

#### Is it possible to expense mileage for a round trip drive?

Yes, simply click on the `+` icon when entering your destinations to add a location.

####  Will I be able to submit for reimbursement in kilometers instead of miles?

The region assigned to you by your Liquid Admin Team will determine if you are able to submit in kilometers or miles. **Note:** If you are a US-based employee using your personal car on an international trip, you will still need to submit your reimbursement request in miles.

#### Can I still submit mileage for travel, without attaching it to a trip booked on TripActions?

Yes, as long as your assigned expense policy allows for mileage reimbursement. 

#### Can I automatically submit Lyft expenses?

TripActions Liquid™ users can connect their Lyft account to TripActions Liquid to automatically send receipts and submit expenses for business travel-related Lyft rides. To leverage this option, you will first need to create a Lyft business profile with the same email address you use in TripActions.

> Check the _[How can I automatically submit Lyft expenses?](https://community.tripactions.com/s/article/submitting-lyft-expenses)_ article for more details.

#### Should I add tax details for TripActions Liquid™ transactions?

Team members are not required to add tax details to any expense transactions.


> Check the _[How can I add tax details for TripActions Liquid™ transactions?](https://community.tripactions.com/s/article/add-tax-details)_ article for more details.

#### If I submit multiple receipts at once and everything is auto-approved, are we paid in 1 lump sum or via multiple reimbursements?

A deposit for each transaction will be made into your bank account. If you submit 5 manual expenses, you will receive 5 separate bank deposits for each individual transaction.

#### If my expenses are rejected, can I go back to edit and resubmit?
Expenses will need to be fully resubmitted if rejected. 

## TripActions Liquid Training Videos

All Liquid related videos can be found in our ["Liquid" playlist]() on YouTube.

## TripActions Liquid Support

- For **functionality** related questions, the **Accounts Payable Team** should be the first point of contact for any questions related to how to use the TripActions Liquid platform and expenses related questions.
- For **technical** related questions, the **Finance System Admins** should be the first point of contact for any technical issues and / or questions (eg. Access Requests, problems with login, bugs, etc).

To contact the Accounts Payable Team or Finance System Admins, send a message to [#tripactions-liquid-faq](https://gitlab.slack.com/archives/C04FCJTM606) with your question.
{: .alert .alert-info}


{::options parse_block_html="false" /}
