---

title: "Community Programs Applications Automated Workflows"
description: "This page describes automated workflows for processing applications to the GitLab for Education, GitLab for Open Source, and GitLab for Startups programs."
---







Community Programs workflows have been automated since FY23Q3. For details on the team's legacy workflows, see the 
[Community Programs Legacy Application Workflow](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/community-program-applications/) handbook.
{: .alert .alert-warning}

## About

The goals of this handbook page are to:

* Provide an overview of the automated workflows the [Community Programs team](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/) uses to process applications to [GitLab's community programs](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/#what-is-a-community-program)
* Provide detailed descriptions of each step in those workflows
* Establish more transparency into our workflows so GitLab team members can integrate with them

## Automated applications workflow overview

The Community Programs team partners with a third party, [SheerID](https://www.sheerid.com/shoppers/aboutsheerid/), to assist in processing applications to community programs.
{: .alert .alert-warning}

The Community Programs team processes applications to [GitLab's community programs](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/#meet-the-programs) with a seven-stage workflow:

| Stage | Description |
| ------ | ------ |
| 0. [Application](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/automated-community-programs/#application) | Applicant completes an application form and submits it for eligibility verification. |
| 1. [Verification](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/automated-community-programs/#verification) | SheerID and/or Commuity Programs team verifies applicant's eligibility. |
| 2. [Booking](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/automated-community-programs/#booking) | Successfully verified applicants receive an email with instructions for activating complimentary GitLab licenses. Applicants receive coupon codes and enter those codes during checkout via a program-specific checkout page in the GitLab Customers Portal. |
| 3. [Provisioning](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/automated-community-programs/#provisioning) | Subscription licenses are provisioned through the web direct process on the GitLab Customers Portal. |
| 4. [Compliance](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/automated-community-programs/#compliance) | (Stage handled by Sales-Support and Billing Ops teams. |
| 5. [Renewal](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/automated-community-programs/#renewal) | Program members receive notifications when their subscriptions are due to expire. They also receive insturctions for renewing those subscriptions. |
| 6. [Support](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/automated-community-programs/#support) | Both new applicants and renewing members can seek support for issues they encounter during most stages of the application process. |

## Application

SheerID hosts [applications](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/#meet-the-programs) for the GitLab for Open Education and GitLab for Open Source programs. All communications (email and browser notifications) sent during the verification phase for these two programs are hosted and sent by SheerID.

SheerID provides [customer service](https://drive.google.com/file/d/13AW0BYt4HNFzGfM6iRuMtpjZ1J8tAXyI/view?usp=sharing) specific to GitLab. [MySheerID](https://my.sheerid.com/) is the customer portal for the verification system. The portal contains details on each application form, a reporting system, and account settings. Anyone requiring access to the MySheerID portal can request an account through an [access request](/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/).

The [application](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/#meet-the-programs) to GitLab for Startups is a Marketo form.

We review GitLab's contract with SheerID on an annual basis. Costs are based on the total number of verifications across all programs.
{: .alert .alert-warning}

## Verification

The verification process differs by program. See these handbook pages for more detail:

- [GitLab for Education verification](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/automated-community-programs/edu-program-verification/)
- [GitLab for Open Source verification](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/automated-community-programs/oss-program-verification/)
- [GitLab for Startups verification](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/automated-community-programs/startups-program-verification/)

The links below contain helpful resources for navigating the SheerID review portal:

* [Document review instructions](https://gitlab.com/gitlab-com/marketing/community-relations/community-operations/community-operations/uploads/2369fc68e18a67c4c1aedf402b6fe116/How_to_Asset_Review.pdf)
* [Customer service overview](https://gitlab.com/gitlab-com/marketing/community-relations/community-operations/community-operations/uploads/82d879a5a2311e272b043b00215cabbb/GitLab_+_SheerID_-_CS_Overview.pdf)
* [Hotkeys for quickly navigating the SheerID platform](https://gitlab.com/gitlab-com/marketing/community-relations/community-operations/community-operations/uploads/a0a869d02959c9e33cb642244968a8e5/Doc_Review_2.0_hotkeys.pdf)
* [Instructions for navigating the SheerID customer search portal](https://gitlab.com/gitlab-com/marketing/community-relations/community-operations/community-operations/uploads/c52eae1c8e3d77f3991cf9051d0263f6/My.SheerID_Customer_Search_Tool_-_Updated_Dec_1_with_VRE___SPL_Rules.pdf)

Upon successful verification, applicants receive an email with instructions for obtaining their licenses. These instructions include a unique coupon code generated by the fulfillment team at GitLab (via a coupon code generator). The DRI for the coupon code generator is the [fulfillment team](https://about.gitlab.com/direction/fulfillment/). To generate new coupon codes, open an issue ([example](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/3041)) in the `customers-gitlab-com` project.

Additionally, note the following:

* We store sensitive, program-specific codes [internally](https://gitlab.com/gitlab-com/marketing/community-relations/community-operations/community-operations/-/issues/149); only Alex Karsten can access these codes.
* SheerID provides coupon codes when requested via email to `productsupport@sheerid.com`.
* SheerID provides codes in an individual .csv file specific to each program. The .csv file should only have one column, with no header.
* SheerID provides sufficient coupon codes for one year of verifications for each program at a time. The number of coupon codes per year is determined using the following basic formula: `number of applications expected per quarter` + `number of expected renewals` * `an average re-verification factor`.

## Booking

The success email applicants receive contains a direct link to a program-specific page in the Customers Portal. These program-specific pages are *not* available directly in the GitLab Customers Portal; they are only accessible via links in success emails.

During the checkout process:

* Applicants must enter the unique coupon codes they receive in their verification emails
* Applicants must accept a program agreement
  * [GitLab for Education Program Agreement](https://about.gitlab.com/handbook/legal/education-agreement/)
  * [GitLab for Open Source Agreement](https://about.gitlab.com/handbook/legal/opensource-agreement/)
  * GitLab for Startups Agreement is presented directly upon checkout

The GitLab for Startups Terms:

```
If you meet the requirements of the GitLab for Startups Program, you will be eligible to receive twelve (12) months Ultimate [SaaS or Self-Managed] at no cost, without Support. Renewal of the User(s) will be at the current published List Price. Your use of the GitLab Software is subject to the GitLab Subscription Agreement. Software is provided as “Free Software”.
```

## Provisioning

Licenses are provisioned directly during process via the WebDirect flow and according to one of the following SKUs:

* `[EDU Program] SaaS - Ultimate (formerly Gold) - 1 Year [EDU Program] SaaS - Ultimate - 1 Year`
* `[EDU Program] SaaS - Ultimate (formerly Gold) w/ Support - 1 Year [EDU Program] SaaS - Support - 1 Year [EDU Program] SaaS - Ultimate - 1 Year`
* `[EDU Program] Self-Managed - Ultimate - 1 Year [EDU Program] Self-Managed - Ultimate - 1 Year`
* `[EDU Program] Self-Managed - Ultimate w/ Support - 1 Year [EDU Program] Self-Managed - Ultimate - 1 Year [EDU Program] Self-Managed - Support - 1 Year`

* `[OSS Program] SaaS - Ultimate (formerly Gold) - 1 Year [OSS Program] SaaS - Ultimate - 1 Year`
* `[OSS Program] SaaS - Ultimate (formerly Gold) w/ Support - 1 Year [OSS Program] SaaS - Support - 1 Year [OSS Program] SaaS - Ultimate - 1 Year`
* `[OSS Program] SaaS - Ultimate (formerly Gold) w/ Support - 3 Year [OSS Program] SaaS - Support - 3 Year [OSS Program] SaaS - Ultimate - 1 Year`
* `[OSS Program] Self-Managed - Ultimate - 1 Year [OSS Program] Self-Managed - Ultimate - 1 Year`
* `[OSS Program] Self-Managed - Ultimate w/ Support - 1 Year [OSS Program] Self-Managed - Support - 1 Year [OSS Program] Self-Managed - Ultimate - 1 Year`
* `[OSS Program] Self-Managed - Ultimate w/ Support - 1 Year [OSS Program] Self-Managed - Support - 3 Year [OSS Program] Self-Managed - Ultimate - 3 Year`

* `[Startups Program] SaaS - Ultimate (formerly Gold) - 1 Year [Startups Program] SaaS - Ultimate - 1 Year`
* `[Startups Program] SaaS - Ultimate (formerly Gold) w/ Support - 1 Year [Startups Program] SaaS - Ultimate - 1 Year [Startups Program] SaaS - Support - 1 Year`
* `[Startups Program] Self-Managed - Ultimate - 1 Year [Startups Program] Self-Managed - Ultimate - 1 Year`
* `[Startups Program] Self-Managed - Ultimate w/ Support - 1 Year [Startups Program] Self-Managed - Ultimate - 1 Year [Startups Program] Self-Managed - Support - 1 Year`

## Compliance

Sales-Support and Billing Ops handle compliance-related issues. This stage results in granting the license and notifying the customer of how to access the licenses. The Community Programs team ensures compliance with Program Agreements. 

In cases where the Community Programs team believes a program member's actions violate the terms of a Program Agreement, team members will report the suspected violation by opening a [Legal and Compliance issue](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues/). The Community Programs team will then collaborate with GitLab's Legal team to determine the most appropriate method of assessing the issue.

In cases where the Community Programs team believes a program member's actions violate the terms of a Program Agreement, and the violation is curable, the team will enact the following procedure to begin redress and ensure compliance.

First, the team will notify the program member of the suspected violation with a message that conforms to [the appropriate template](https://gitlab.com/gitlab-com/marketing/developer-relations/community-programs/operations/-/blob/main/support-macros/opensource/oss-program-eligibility-violation.md). The purpose of this message is to:

* Serve as formal notice that under the terms of an applicable Agreement the program member's current use of the licenses granted is not in compliance with the terms of the applicable Agreement.
* Signal the beginning of the 30-day cure period, by the conclusion of which the program member must rectify the failure
* Express interest in and commitment to working with the program member to remedy the situation 
* Offer to meet with (or communicate asynchronously with) the program member to answer additional questions about the member's use of GitLab under the terms of the Program Agreement

Members of the Community Programs team will then work with the program member to cure the failure before the 30-day cure period has concluded.

At the conclusion of the cure period:

**If the program member remedies the situation**, then no further action is necessary and the program member can continue using its GitLab subscription. The program member should expect to renew this subscription at the conclusion of its term, and at that time be subject to review of its eligibility criteria.

**If the program member does not remedy the situation**, then GitLab will terminate the subscription license it granted the program member under the terms of the applicable Agreement.

Certain situations may warrant immediate evocation of a program member's subscription license. In those cases, GitLab will use best efforts to notify the program member prior to revocation subject to the terms of the applicable agreement.

To revoke a subscription license, GitLab team members should engage GitLab's Sales Support team via Salesforce as follows:

1. Locate the subscription associated with the license in question
1. Chatter Deal Desk to request this subscription be "debooked"

Debooking a subscription revokes its associated Ultimate license.

## Renewal

Applicants renewing their program memberships must re-apply to their respective programs to ensure continued eligibility. To do this, they use [the same application forms](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/#meet-the-programs) they used when initially enrolling in the program.

The success email will contain a direct link to a program-specific page for each program (Education/Open Source) in the GitLab Customers Portal. The program-specific pages are not available directly in the GitLab Customers Portal without the direct link. The applicant will need to enter the unique coupon code during the checkout process. Links for community-specific customer portal are [here](https://gitlab.com/gitlab-com/marketing/community-relations/community-operations/community-operations/-/issues/169).

## Support

Each step of the automated application workflow has different set of potential errors and related support workflows.

|Phase|Source|Error|DRI|Action|
|-----|------|-----|---|------|
| Verification | SheerID Application| False Rejection EDU | SheerID  | Contact SheerID from Rejection Email.  |
| Verification | SheerID Application| False Rejection OSS | [@bbehr](https://gitlab.com/bbehr) / Open Source Program team | Contact opensource@gitlab.com from rejection email |
| Verification | SheerID Application | Never received success email | SheerID | [SheerId Help Center FAQ](https://offers.sheerid.com/sheerid/help-center/?name=no-email) - Form resends email|
| Verification | SheerID Application | Deletes success email. | SheerID | [SheerId Help Center FAQ](https://offers.sheerid.com/sheerid/help-center/?name=no-email) - Form resends email|
| Verification | SheerID Application | Form not responding or something goes wrong with form. | SheerID | [Contact SheerID Support Team ](https://offers.sheerid.com/sheerid/help-center/?name=form-doesnt-work)|
| Verification | SheerID Application | Applicant makes a case to SheerID that EDU rejection was in error but SheerID cannot resolve. | Education Program team | SheerID emails education@gitlab.com with details. GitLab EDU team resolves. |
| Booking | GitLab Customers Portal | Coupon Code has already been used | GitLab Support |Error message on the portal. `The code has already been used.` There is no CTA on the portal, user will go back to email which directs them to open a support ticket under [`Issues with billing, purchasing, subscriptions, or licenses.`](https://about.gitlab.com/support/#issues-with-billing-purchasing-subscriptions-or-licenses)|
| Booking | GitLab Customers Portal | Coupon Code is invalid | GitLab Support | Error message on the portal. `This code is not valid. Try re-entering the code from your email`. There is no CTA message on the portal, the user will go back to email which directs them to open a support ticket under [`Issues with billing, purchasing, subscriptions, or licenses.`](https://about.gitlab.com/support/#issues-with-billing-purchasing-subscriptions-or-licenses) |
| Fulfillment | GitLab Customers Portal | Any problems with Customers Portal itself after coupon code succeeds.| GitLab Support | Open Support Ticket [`Issues with billing, purchasing, subscriptions, or licenses.`](https://about.gitlab.com/support/#issues-with-billing-purchasing-subscriptions-or-licenses) )|
| Fulfillment | GitLab Customers Portal | If the applicant enters the incorrect number of seats or choses the incorrect hosting type (self-managed or Saas) and the license has already been granted, the application will need to obtain an [add on quote to change](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#a--add-on-quote-creation) the license parameters | Community Programs | Email `education@gitlab.com`, `opensource@gitlab.com`, or `startups@gitlab.com` requesting changes |
