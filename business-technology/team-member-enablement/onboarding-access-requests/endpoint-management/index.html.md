---
layout: handbook-page-toc
title: "Endpoint Management at GitLab"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Endpoint management overview

## What is an endpoint?

An endpoint is any device that is physically an endpoint on a network. These can include laptops, desktops, mobile phones, tablets, servers, and virtual environments. For the purposes of this current project however, the scope is limited to Apple laptops.

## What is endpoint management?

End-point management is used to protect the corporate network when accessed via remote devices such as laptops. Each laptop with a remote connection to the network creates a potential entry point for security threats.

# Endpoint management at GitLab

At GitLab, we plan to use centralized laptop management for company-issued laptops. If we start doing that, we'll change this sentence. This page is live in the handbook so we can respond to feedback.

At this stage, if you are in possession of a company-issued Apple laptop, the details below apply to you. Non Apple laptops, personal laptops or mobile devices are not in scope of this iteration.

## Expectation and success criteria

Our expectation is that we will find 10% of our Macbook devices with no harddrive encryption and 5% of the operating systems are not at the current patch level.

If the number of encrypted drives is below 2% and the number of out of date OS is below 1% we will re-consider making end-point management required for all Mac OS users.

## Why is this necessary?

In order to achieve compliance with frameworks such as SOX (required as part of public company readiness), [SOC](https://www.aicpa.org/content/dam/aicpa/interestareas/frc/assuranceadvisoryservices/downloadabledocuments/trust-services-criteria.pdf), and in preparation of [FedRAMP](https://www.fedramp.gov/assets/resources/documents/FedRAMP_Security_Assessment_Framework.pdf) and [ISO 27001](https://www.isms.online/iso-27001/annex-a-8-asset-management/), certain protections of company assets are mandated.

Given that transparency is so ingrained in our culture, the risk of any laptop having confidential or PII data is high (e.g. Slack contains team-member phone numbers).

Additionally, to meet the rigorous security requirements of enterprise customers who desire to use our service, an endpoint management solution is necessary. We have to select an endpoint management solution that will accomplish the following:

1. Allow for software to be remotely deployed without requiring manual installation
1. Maintain asset inventory of all GitLab owned devices
1. Software license management
1. Enable confirmation that whole disk encryption has been enabled (using the Mac OS built-in FileVault feature)
1. Provide the ability to remotely wipe a device that has been lost or stolen
1. Allow for the configuration of security features such as required passwords and OS updates

### What is not necessary?

What the endpoint management solution **does not** do:

1. Content filtering
1. Collect, log or track personal activity (including website visits or purchases)
1. Remote viewing
1. Key-logging


