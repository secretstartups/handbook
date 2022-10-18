---
layout: handbook-page-toc
title: Approved Operating Systems
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

At GitLab it's vital we ensure the data of our Customers, our team-members, and our company is treated and protected with the appropriate security measures it deserves.

With this in mind, GitLab Security will begin enforcing a list of approved Operating Systems and minimum Operating System versions for use at GitLab. This change will decrease the risk from the use of End-Of-Life or unapproved Operating Systems accessing locations which may contain sensitive data.

Please see the [Data Classification Policy](/handbook/engineering/security/data-classification-standard.html) handbook page for further details on how different data types are classified.

## Approved Operating Systems

_last updated 2022-10-18_

### macOS

macOS 12.5.1 or later

### Linux

GitLab requires that you run an actively updated and supported Linux distro. It will be your responsibility to maintain your Linux environment.

The list of Linux versions below is based on what our [EDR](/handbook/business-technology/team-member-enablement/onboarding-access-requests/endpoint-management/edr/) platform supports. Deployment of the EDR solution will be required.

Linux versions are therefore limited to:
- CentOS 7.0-7.9, 8.0
- Red Hat Enterprise Linux (RHEL) 7.0-7.9, 8.0-8.6, 9.0
- Ubuntu - 18.04, 20.04, 22.04
- SUSE Linux Enterprise Server 12.X, 15.X
- Debian 10, 11
- Virtuozzo 7
- Scientific Linux 6, 7
- AlmaLinux 8.4, 8.5, 8.6, 9.0
- RockyLinux 8.4, 8.5, 8.6, 9
- Amazon Linux 2
- Fedora 35-36
- Oracle 7.0-7.9, 8.0-8.6, 9.0

Further details are available at the [Linux Tools & Tips](/handbook/tools-and-tips/linux/) page.

### Android

Android 12 or later

### iOS

iOS 15.6.1 or later

### Windows

As described in the [Acceptable Use Policy](/handbook/people-group/acceptable-use-policy/#unable-to-use-company-laptop), Microsoft Windows operating systems are not allowed. If you have a legitimate business need to use a Windows operating system, please see the [Exception Process](#exception-process).

**Note:** Even if a Windows machine is approved for use via the above Exception Process, that machine cannot be used to access GitLab corporate services (e.g. Slack, G-Suite, GitLab.com); the Windows machine can only be used in addition to a GitLab-managed Mac machine.

## Access Change Schedule

### October 18, 2022

Removed outdated Ubuntu versions 19.04 and 19.10.

### August 31, 2022

Allowed Linux distros listed.

### January 20th, 2020

All **Windows** users must submit Exception Requests for the continued use at GitLab, and any unauthorized user of Windows will be notified. These users must have a legitimate business need which cannot be accomplished or is significantly more difficult on a macOS or Linux OS, must use Windows 10 or later, and have manager approval.

### January 27th, 2020

Users of Android 7.1.1 or older will be notified and required to upgrade to a supported version of Android OS. Access restrictions may be enforced if use of unauthorized versions of Android persist.

## Exception Process

Exceptions must follow the Exception Management process as outlined in the [GitLab Security Handbook page](/handbook/engineering/security/#information-security-policy-exception-management-process)
