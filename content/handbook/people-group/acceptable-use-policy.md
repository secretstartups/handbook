---
title: "GitLab Internal Acceptable Use Policy"
description: "This policy specifies requirements related to the use of GitLab computing resources and data assets"
---

{{% alert title="This is a Controlled Document" color="danger" %}}
Inline with GitLab's regulatory obligations, changes to [controlled documents]({{< ref "controlled-document-procedure" >}}) must be approved or merged by a code owner. All contributions are welcome and encouraged.
{{% /alert %}}

## Purpose

This policy specifies requirements related to the use of GitLab computing resources and data assets by GitLab Team Members so as to protect our customers, Team Members, contractors, company, and other partners from harm caused by both deliberate and inadvertent misuse. Our intention in publishing this policy is to outline information security guidelines intended to protect GitLab assets.

It is the responsibility of every member of our Community to interact with GitLab computing resources and data in a secure manner and to that end we provide the following acceptable use standards related to computing resources, company and customer data, mobile and tablet devices, and removable and external media storage devices.

## Scope

This policy applies to all GitLab Team Members, contractors, advisors, and contracted parties interacting with GitLab computing resources and accessing company or customer data.

## Roles & Responsibilities:

| Role  | Responsibility |
|-----------|-----------|
| GitLab Team Members | Responsible for following the requirements in this procedure |
| Security, Legal and PeopleOps | Responsible for implementing and executing this procedure |
| Security, Legal and PeopleOps (Code Owners) | Responsible for approving significant changes and exceptions to this procedure |

## Procedure

### Acceptable Use and Security Requirements of Computing Resources at GitLab

GitLab-managed assets are provided to conduct GitLab business, with consideration given for limited personal use subject to any conflicting statements contained in individual employment contracts. Our company uses global electronic communications and resources as routine parts of our business activities. Personal and professional use of GitLab-managed assets are subject to security monitoring and protection, unless prohibited under the local laws of a respective Team Member's jurisdiction. It is essential that electronic resources used to perform company business are protected to ensure that these resources are accessible for business purposes and operated in a cost-effective manner, that our company’s reputation is protected, and that we minimize the potential for legal risk.

Those receiving GitLab-provided assets are responsible for exercising good judgment when using GitLab-managed computers and accessing GitLab-managed data.

As per the [onboarding issue procedures](https://gitlab.com/gitlab-com/people-group/people-operations/employment-templates/-/blob/main/.gitlab/issue_templates/onboarding.md) outlined in our handbook, evidence of device encryption and device serial number must be provided to IT Ops prior to the completion of onboarding period.

We are currently using Jamf as our endpoint management solution for Mac laptops. All macOS laptops procured by GitLab will come configured with [Jamf](/handbook/business-technology/team-member-enablement/onboarding-access-requests/endpoint-management/). GitLab Team Members procuring and expensing Mac Laptops will require [Jamf](/handbook/business-technology/team-member-enablement/onboarding-access-requests/endpoint-management/) to be installed as part of their [Day 1 Security tasks](https://gitlab.com/gitlab-com/people-group/people-operations/employment-templates/-/blob/main/.gitlab/issue_templates/onboarding.md#day-1-getting-started-accounts-and-paperwork). Upon their discretion, IT Ops may install additional security tools via Jamf.

Linux users must install [SentinelOne](/handbook/business-technology/end-user-services/onboarding-access-requests/endpoint-management/edr/#how-do-i-install-the-sentinelone-agent-on-linux) and [DriveStrike](/handbook/it/guides/drivestrike/#installation-process) as part of their onboarding process.

### Security and Proprietary Information

All GitLab data is categorized and must be handled in accordance with the [Data Classification Standard](/handbook/security/data-classification-standard.html). All computing assets that connect to any part of the GitLab network, or 3rd party services that are used by GitLab, must comply with the applicable standards.

### Open source libraries

Open Source libraries are allowed under this policy if its use complies with the pre-approved or approval requirements captured in the [Product Legal Handbook](https://about.gitlab.com/handbook/legal/product/#using-open-source-software).

### Individual Use Software, Freeware, Browser Extensions, Add-ons, and Plugins

Individual use software, freeware, browser extensions, add-ons and plugins, including Zoom marketplace and Google integrations(collectively, "Third Party Software"), are not approved for use at GitLab under this policy.  Third Party Software may create security and privacy risk due to a lack of governance and enterprise controls.  Therefore, only [Tech Stack Applications](https://about.gitlab.com/handbook/business-technology/tech-stack-applications/) under an enterprise license are permitted for use. Exceptions to this policy can be found below.

If you need to obtain enterprise software on behalf of Team Members, please begin the [Procurement Process](https://about.gitlab.com/handbook/finance/procurement/#-how-do-i-start-the-procurement-process).

#### Exceptions

- Third Party Software found on the [Pre-Approved Individual-Use Software] list is permitted for use subject to any "Notes and Restrictions" for each respective Pre-Approved software offering.
- Third Party Software is permitted for use if it receives prior approval from Legal, Privacy and Security (as applicable).  To obtain approval, please begin the [Individual Use Software](https://about.gitlab.com/handbook/finance/procurement/personal-use-software/#how-do-i-submit-a-request-for-new-individual-use-software) request process for software that costs less than $5,000, or open an [Issue](https://gitlab.com/gitlab-com/Finance-Division/procurement-team/procurement/-/issues/new?issuable_template=app_integrations) for a free application.

<div class="panel panel-gitlab-purple">
**Note**
{: .panel-heading}
<div class="panel-body">

In order to abide by the [SAFE Framework](/handbook/legal/safe-framework/), to preempt third party processing of company data under permissive individual use licensing terms, or to prevent Team Member misuse of certain Third Party Software features, IT, Legal, Privacy and Security will generally err on the side of disallowing exceptions to enterprise level software, particularly if there is an enterprise option already in our [Tech Stack Applications](https://about.gitlab.com/handbook/business-technology/tech-stack-applications/) that achieves a similar purpose.
</div>
</div>


### Unacceptable Use

Team Members and contractors may **not** use GitLab-managed resources for activities that are illegal or prohibited under applicable law, no matter the circumstances.

Security requirements for GitLab production and corporate environments and on GitLab-managed assets must not be disabled without security approval via the [Information Security Policy Exception Management Process](/handbook/security/#information-security-policy-exception-management-process).

#### Unacceptable System and Network Activities

Prohibited system and network activities include, but are not limited to, the following:

- Violations of the rights of any person or company protected by copyright, trade secret, patent or other intellectual property, or similar laws or regulations.
- Unauthorized copying, distribution, or use of copyrighted material.
- Exporting software, technical information, encryption software, or technology in violation of international or national export control laws.
- Intentional introduction of malicious programs into GitLab networks or any GitLab-managed computing device.
- Intentional misuse of any GitLab-managed computing device or GitLab networks (e.g. for cryptocurrency mining, botnet control, etc.).
- Sharing your credentials for any GitLab-managed computer or 3rd party service that GitLab uses with others, or allowing use of your account or a GitLab-managed computer by others. This prohibition does not apply to single-sign-on or similar technologies, the use of which is approved.
- Using a GitLab computing asset to procure or transmit material that is in violation of sexual harassment policies or that creates a hostile workplace.
- Making fraudulent offers of products, items, or services originating from any GitLab account.
- Intentionally accessing data or logging into a computer or account that the Team Member or contractor is not authorized to access, or disrupting network communication, computer processing, or access.
- Executing any form of network monitoring that intercepts data not intended for the Team Member’s or contractor's computer, except when troubleshooting networking issues for the benefit of GitLab.
- Circumventing user authentication or security of any computer host, network, or account used by GitLab.
- Tunneling between network segments or security zones (e.g., `gprd`, `gstg`, `ops`, `ci`), except when troubleshooting issues for the benefit of GitLab.
- Given the potential sensitivity of the data contained in screenshot images, the use of tools that capture and share screenshots to hosted sites online is prohibited without the explicit approval of the Security and Legal Departments.  Screenshots should be stored locally or within Google drive folders associated with your GitLab.com account. Access to these drives and files should be managed in accordance with our [Access Management policy](/handbook/security/access-management-policy.html), and handled according to our [Data Classification Standard](/handbook/security/data-classification-standard.html). Tools such as [Lightshot](https://app.prntscr.com/en/index.html), where upload functionality cannot be disabled and could result in inadvertent uploads, should not be used.
- The use of high risk remote administration tools, such as TeamViewer and AnyDesk, which are [commonly used by attackers](https://attack.mitre.org/techniques/T1219/) to gain and remotely control systems.

#### Unacceptable Email and Communications Activities

Forwarding of confidential business emails or documents to personal external email addresses is prohibited.

> Note: GitLab may retrieve messages from archives and servers without prior notice if GitLab has sufficient reason to do so. If deemed necessary, this investigation will be conducted with the knowledge and approval of the Security, People Business Partners, and Legal Departments.

In addition to following the [Team Member Social Media Policy](/handbook/marketing/team-member-social-media-policy/), when utilizing social media think about the effects of statements that you make. Keep in mind that these transmissions are permanent and easily transferable, and can affect our company’s reputation and relationships with Team Members and customers. When using social media tools like blogs, Facebook, Twitter or wikis, ensure that you do not make comments on behalf of GitLab without proper authorization. Also, you must not disclose our company’s confidential or proprietary information about our business, our suppliers, or our customers.

### Return of GitLab-Owned Assets

All GitLab-owned computing resources must be [returned](/handbook/people-group/offboarding/#returning-property-to-gitlab) upon separation from the company.  Notwithstanding anything contrary in the [Laptop Buy Back Policy](/handbook/business-technology/end-user-services/onboarding-access-requests/#laptop-buy-back-policy) or the [Offboarding Tasks](/handbook/people-group/offboarding/#managing-the-offboarding-tasks), Team Members must return any GitLab-Owned Assets -- irrespective of their valuation -- if they are specifically requested to do so either during their tenure with GitLab or upon offboarding.

### Bring-Your-Own-Device (BYOD)

As a general rule, non-company devices are not permitted to access company assets. While there are some exceptions listed below, access to RED classified data, as defined by the [GitLab Data Classification Standard](/handbook/security/data-classification-standard.html), is still prohibited.

The exceptions are as follows:

#### Personal Mobile Phone and Tablet Usage

All personal mobile computing devices used to access GitLab-managed data, including but not limited to email and GitLab.com, must be passcode-enabled. 2FA will be enforced by the Security team for all employee and contractor GitLab.com and Google Workspace accounts. Mobile computing best practices dictate that these devices should be running the latest version of the operating system available, and all new patches applied. For assistance with determining the suitability of your mobile device, please contact the Security Team.

#### Unable to Use Company Laptop

For new employees who have not received a company laptop, there are [exception processes](/handbook/business-technology/team-member-enablement/onboarding-access-requests/#exception-processes) for using non-company devices.

The same exception processes apply in the case of a corporate laptop being unavailable or unusable due to loss, theft or disrepair. See [lost or stolen procedures]({{< ref "/handbook/security#reporting-an-incident" >}}) for additional information. You must open [a Policy Exeption Request](https://gitlab.com/gitlab-com/gl-security/security-assurance/sec-compliance/exceptions/issues/new?issuable_template=exception_request). While the exception processes are considered a temporary solution, you still need to make sure the non-company system meets [basic configuration standards](/handbook/business-technology/it/security/system-configuration/#laptop-or-desktop-system-configuration), and a Microsoft Windows system is still not allowed access under any circumstances.

Do not sign in to any GitLab related accounts using public computers, such as library or hotel kiosks.

### Mobile Messaging

All GitLab-related conversations need to take place in Slack. It is strongly recommended that the official Slack application, or Slack web application, are used for mobile messaging. Downloads are available for [iOS](https://itunes.apple.com/app/slack-app/id618783545?ls=1&mt=8) and [Android](https://play.google.com/store/apps/details?id=com.Slack). While it may be more convenient to use an integrated chat application that puts all of your conversations in one place, the use of these applications can unintentionally lead to work-related conversations crossing platforms, or being sent to external contacts. The use of Slack for all work communications assists with our security and compliance efforts. For example, in the case of an incident response issue, it may be necessary to review a conversation to understand the order in which events occurred, or to provide evidence that the chain of custody has been maintained for forensic evidence during a handoff.

For [video calls](/handbook/communication/#video-calls), and as a back-up to Slack, we prefer Zoom. Zoom chats are an acceptable alternative to Slack when in a video call. If the conversation is interesting to others or may be needed for a retrospective, consider recording the call.

### Use of External Media on Company Assets

The use of removable and external storage devices such as USB flash drives and external backup drives on company-managed devices is not officially sanctioned. If there is a business need for the use of an external storage device, such as a flash drive or an external hard drive on company devices, please contact the Security Team to determine the most suitable encryption-enabled device. All external and removable storage devices must be encrypted and protected by a passcode.

### Use of file sharing services other than Google Drive

Creating an account with, or using, a file sharing service other than Google Drive for sharing GitLab-related files with other Team Members or those external to GitLab is not permitted unless an exception has been granted. To obtain an exception create an [access request](/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/) outlining the business case, and do not proceed until the exception has been granted.

When creating an account with and using a file sharing service other that Google Drive, Team Members must:
- Where available, use the `Sign in with Google` single sign-on option using a GitLab Google Workspace account, rather than creating an account using a GitLab (or other provider) email address and password.
- Only upload files directly to shared folders created by those external to GitLab and do not upload files to the personal area of the file sharing service.
- Remove all files and close the account when the file sharing service is no longer needed.

### Lost or Stolen Procedures

GitLab provides a `panic@gitlab.com` email address and a [lost or stolen procedure]({{< ref "/handbook/security#reporting-an-incident" >}}) for team members to use in situations that require an immediate security response. Should a team member lose a device such as a thumb drive, Yubikey, mobile phone, tablet, laptop, etc. that contains their credentials or other GitLab-sensitive data, they should send an email to `panic@gitlab.com` right away. When the production and security teams receive an email sent to this address it will be handled immediately. Using this address provides an excellent way to limit the damage caused by a loss of one of these devices.

GitLab reserves the right to request documentation of the theft and/or a related police report in the case of a stolen laptop.

### Policy Compliance

Compliance with this policy will be verified through various methods, including but not limited to, automated reporting, audits, and feedback to the policy owner.

Any Team Member or contractor found to be in violation of this policy may be subject to disciplinary action, up to and including termination of employment, or contractual agreement.

### Consultations

To consult with the Security Team create an issue in the [Security Compliance tracker](https://gitlab.com/gitlab-com/gl-security/security-assurance/team-commercial-compliance/compliance/issues).

## Exceptions

Exceptions to this policy must be approved by Security, Legal and PeopleOps Departments.

- [Onboarding Issue](https://gitlab.com/gitlab-com/people-group/people-operations/employment-templates/-/blob/main/.gitlab/issue_templates/onboarding.md)
- [Data Classification Standard]({{< ref "data-classification-standard" >}})
- [Asset return procedure]({{< ref "offboarding#returning-property-to-gitlab" >}})
- [Lost or stolen asset procedure]({{< ref "/handbook/security#reporting-an-incident" >}})

## References

- Parent Policy: [Information Security Policy]({{< ref "/handbook/security" >}})
- GitLab's [Community Code of Conduct](https://about.gitlab.com/community/contribute/code-of-conduct/) applies to all members of the GitLab community
