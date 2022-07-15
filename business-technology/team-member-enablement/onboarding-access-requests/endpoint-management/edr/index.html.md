---
layout: handbook-page-toc
title: "Endpoint Detection and Response at GitLab"
description: "Endpoint Detection and Response: EDR, endpoint security, anti-virus, macOS, Windows, Linux, endpoint management"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


# Endpoint Detection & Response Technology

## Overview
With an increased number of high profile breaches in the media today it is important we carefully consider the risk and external threats GitLab faces.  Due to our service and the companies that use us, it is credible that we are or will soon become a high profile target for adversaries looking to exploit GitLab or a GitLab customer. Endpoint detection and response (EDR) technology helps further strengthen endpoint security protecting not only GitLab, but each of our Team Members as well. All macOS and Windows devices used by GitLab Team Members for the purposes of fulfilling the responsibilities of their role as a GitLab Team Member are required have the SentinelOne EDR agent installed and functioning. At this time, the agent is not required to be installed on Linux endpoints. The use of a Windows endpoint requires a specfic business reason and an approved exception as the [use of a Windows endpoint is prohibited](https://about.gitlab.com/handbook/business-technology/team-member-enablement/onboarding-access-requests/#laptop-configurations).

### What is Endpoint Detection and Response (EDR)?

EDR is a collection of endpoint security technologies that together record and store endpoint-system-level behaviors, use various data analytics techniques to detect suspicious system behavior, provide contextual information, block malicious activity, and provide remediation paths to restore affected systems.

### What is SentinelOne?
[SentinelOne](https://www.sentinelone.com/) is the EDR technology chosen by GitLab to help protect endpoint devices. All data associated with the effort conducted to evaluate EDR vendors while ultimately resulted in the chosing of SentinelOne can be found in the efforts [project repo](https://gitlab.com/gitlab-com/gl-security/security-research/edr-proof-of-concept/-/tree/master).

### Why is this necessary?

GitLab is a growing global company and as such we are required to meet compliance requirements in different countries, with one of those requirements being endpoint protection. An EDR solution meets that requirement. A number of customers also ask us if we are protecting their data by us protecting the systems that could potentially access their data, and ask specifically about EDR and Antivirus. EDR meets this requirement and addresses customer concerns.

Equally important is the security and privacy of our team members and their laptops. As GitLab continues to grow, we are increasing the likelihood that we will be targeted by malicious attackers. We want to ensure we have a way to protect team members and their laptops whether they are at home, on the road, or at the coffee shop down the street.

### How to get help with SentinelOne
If you need help with the SentinelOne agent on your endpoint please reach out to the Information Technology team in the [#it-help](https://join.slack.com/share/zt-pq971lw7-mj0nOlsSIwUkvYloz3u85g) Slack channel. If you have security concerns please reach out to the Security team in the [#security](https://join.slack.com/share/zt-pzvju0ok-Z5mjT~FlPuRJZICPE38STg) Slack channel.

### Exception request process
If SentinelOne is causing issues with your ability to fulfill the responsibilities of your role, you may request an exception to be granted using the [Information Security Policy Exception Management Process](https://about.gitlab.com/handbook/engineering/security/#information-security-policy-exception-management-process). Exceptions will be granted based on the goal of least needs, attempting to maximize effectiveness, efficiency, and security risk mitigation of SentinelOne while minimizing the negative impact on the team member. For this reason, rarely will an exception be granted to completely disable SentinelOne. Rather, an exception will be granted for specific directory paths, specific applications, or specific collections of data that SentinelOne may be negatively impacting through quarantine or system performance degradation. 

### What is the difference between EDR and Antivirus?

Antivirus can be seen as one part of the EDR complete security technology solution. Traditionally, antivirus software is a single program which serves basic purposes like scanning, detecting and removing viruses and different types of malware. For EDR, real time status, remediation paths, endpoint firewalls, and system behavioral analytics come together to create a comprehensive technology stack to protect against modern day digital attacks. 

### How does EDR technology work?

The first line of defense is stopping (or if configured, alerting) common threats on the laptop. As for additional or more "layered" lines of defense, certain types of activity (mainly involving processes on the laptop) are recorded and uploaded to a private instance for further processing and investigation. Much more sophisticated processing can take place for more thorough threat detection. This data is never shared with the EDR vendor. As a result, the agent on the laptop is typically 40-60mb in size, as opposed to the older traditional antivirus solutions which can be well over a gigabyte. This results in less resources being used on the laptop including low CPU and low memory usage.

### Is this in addtion to Jamf or a replacement for Jamf?

The EDR technology is in addition to Jamf. While Jamf does offer security features and protections, an EDR solution combined with Jamf will offer great ability to detect and stop significant threats and advanced digital attacks on GitLab team member laptops.

### Will it monitor my local network?

No. The EDR solution only monitors the GitLab laptop, like an antivirus solution would (only much more efficiently).

### What is not necessary?

Monitoring of team member activity. We have no intention of doing this. There will be times, such as during an active security incident where a [Security Incident Response Team (SIRT)](https://about.gitlab.com/handbook/engineering/security/#sirt---security-incident-response-team) team member may need to remotely perform actions to stop and contain the incident, but these will only be used if required and with the consent of the team member. All such actions will also be auditable.

### Why are we using a third party endpoint management system?

We do not want to write our own EDR solution, nor do we want to assemble a series of partial solutions into some type of chain to attempt to meet compliance requirements. Not only does a third party EDR solution allow us to meet requirements in a thorough and more economic way, it will show auditors, regulators, and customers that we are taking security seriously and implementing it consistently.

### Can we self-host our own solution to have more control?

We could, although this would require a substantial amount of effort to be able to have a self-managed solution that would address both compliance requirements and customer concerns. The chosen EDR technology is a single-tenant-hosted third party EDR solution to help ensure GitLab and Team Member data privacy.

### I dual boot two different operating systems, do they both need an agent?

Yes. Each operating system (with the exception of Linux) on a host computer that is used to access GitLab computing resources, infrastructure, or environments, will need have an EDR agent installed.

### I have several virtual hosts on my laptop, do they all need agents?

Yes. Each operating system on a computer (with the exception of Linux), to include the host operating system, and all guest operation systems, that are used to access GitLab computing resources, infrastructure, or environments, will need have an EDR agent installed.


### I run my own antivirus solution on my work laptop, isn’t that enough?

While this effort is certainly appreciated, we need a way to be able to audit laptops to meet compliance requirements. We would still encourage you to run any such antivirus product up until the EDR solution has been rolled out to your laptop. After which time, we strongly encourage you to uninstall the antivirus solution previously installed. Multiple instances of these technologies, especially from different vendors, have the tendency to cause issues on an endpoint which may negatively impact system performance and your productivity.


### Who owns and manages the EDR solution at GitLab?

Jointly, the Security Department and Business Operations will be responsible for different components. [SIRT](https://about.gitlab.com/handbook/engineering/security/security-operations/sirt/sec-incident-response.html) will manage the console for incidents, [Business Operations](https://about.gitlab.com/handbook/business-ops/) will handle the deployment of agents (via JAMF), and [Compliance](https://about.gitlab.com/handbook/engineering/security/security-assurance/security-compliance/) will handle auditing components. With two departments responsible for usage, we deem it to be joint ownership. The Security DRI is Laurence Bierner and the Business Operations DRI is Peter Kaldis as he is heading up the [endpoint management](https://about.gitlab.com/handbook/business-technology/team-member-enablement/onboarding-access-requests/endpoint-management/) effort. The executive sponsor for the effort is Johnathan Hunt.

### What safeguards are in place to ensure that owners of this process can prevent abuse?

While such a possibility exists, we feel that the risk of something like this happening is much, much smaller than some of the risks that an endpoint management solution is made to address. Risks like:
 - Laptop is accidentally infected with malware and team-member is unaware of the infection.
 - Laptop is accidentally infected with malware or was the target of an attack.
 - The Laptop is compromised and the GitLab team members access and identity are used to further attack GitLab and our customers.
 - A new security exploit is discovered, and unpatched applications start getting exploited in the wild.
 - GitLab experiencing a targeted attack on our endpoints, which could lead to a compromise of the GitLab Production environment resulting in a customer data breach.

That being said, the EDR solution provides the ability to audit any processes and actions that have been conducted by an Administrator or the technology itself. The solution has role-based access controls implemented to limit access to certain features, and all of the use of such features is auditable.

### What options does a team member have to protect their home network privacy?

If you wish to add further privacy and security to your home network, you can further isolate your work machine by creating a separate network for it. While we cannot provide you with any direct support for this type of network setup, the Security team have a good writeup with some examples [here](https://about.gitlab.com/handbook/security/network-isolation/) that might help to get you started.
