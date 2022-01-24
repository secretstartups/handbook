---
layout: markdown_page
title: Sign-off
category: Project Execution
---

After the SOW, or a specific Milestone has been successfully delivered and completed, the customer will need to sign a Project sign off document. This should be sent by the PM or Project Coordinator. To send a Project Sign off document:

1. Create a Project sign-off document for the Project or Milestone, based upon the [Project Sign off template](https://docs.google.com/document/d/1RiS5TY5484nQuDTW8YMiB-CibVfoni7NJ8IUG2osUD0/edit)
1. Create an email using the message below and attach the new Project sign off document
1. Add the recipient who will be signing the document to the email and Cc yourself
1. Update subject line to “[customer name]- project sign off
1. Send the email
1. Go into the PSE in SalesForce and update the following fields, general notes (to note the sign off has been sent), status to closure, and update percent to 99%

 

```
Dear [Signer],

Attached you will find the project sign off documentation for your GitLab Professional Services Statement of Work. 

Please sign the document and return at your earliest convenience.  Alternatively, you may reply all with the word “accepted” and that will be accepted as sufficient approval as well.

If you have any questions, please feel free to reach out to let me know.

Thank you,
[your signature]

```
Once you receive the Project Sign off, via signed document or email acceptance, or passive acceptance, you'll need to mark the SOW/PSE object in Salesforce as complete (see steps below), send survey email with survey link (see steps below), and complete the financial-wrapup workflow.
SalesForce steps:

1. Go to PSE record in Salesforce
1. Enter the Completed Date
1. In the Status field, change to "Completed"
1. Set the percentage complete to 100%
1. Select if signed or passive acceptance
1. Save


Survey steps:

1. Create an email with the subject line Project Survey and address it to the main POC from the project
1. Use the message below for the body of the email
1. Send

Hello [customer POC],

Thank you for your business!

GitLab takes our customer's success very seriously.  Professional Services strives to provide a first class experience for our engagements.  We would love to hear your feedback on our recent services engagement with you.

Please click on the link below to provide us your feedback.  The survey should only take 5 minutes to complete. Thank you for your consideration. 
https://gitlab.fra1.qualtrics.com/jfe/form/SV_bIQbxSZByYe5y0l

Should you have any questions or concerns, please do not hesitate to contact me directly.  If you are not the correct contact to complete the survey, please reply to this email with an updated contact.

Best regards,
[your signature]

