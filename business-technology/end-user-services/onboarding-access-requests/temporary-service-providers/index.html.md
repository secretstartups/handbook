---
layout: handbook-page-toc
title: "Temporary Service Providers Access Requests, Onboarding and Offboarding"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What are Temporary Service Providers at GitLab?
Temporary Service Providers are team members that are provided by an outside vendor under an authorized contract, for a limited period of time. 

## What is the Temporary Service Provider lifecycle process like? 
Similar to our Access Request process for team members, we have an access request process for consultants or professional services providers. We track issues related to consultants/professional service providers in the [Temporary Service Providers group](https://gitlab.com/gitlab-com/temporary-service-providers). Temporary Service Providers need to go through the [Professional Services Procurement process](https://about.gitlab.com/handbook/finance/procurement/#--vendor-lifecycle-management) before they can be onboarded. 

## Access Requests and Orientation issues

If the vendor requires access to systems to complete work, the vendor manager (ie. the GitLab team member who will manage the relationship with the temporary service provider, generally a people manager) **is responsible for creation of a Vendor Access Request and Orientation issue.**

   * **Access Request**: These issues aren't created in the same location as access requests for team members. Please use the following link to create an AR using the [access request template](https://gitlab.com/gitlab-com/temporary-service-providers/lifecycle/-/issues/new?issuable_template=access-request) and assign it to yourself and the relevant [provisioner(s)](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) for the tools that the professional services provider requires access to, please also tag the `@gitlab-com/business-technology/team-member-enablement` team. The AR should include [**only systems that are necessary**](/handbook/security/access-management-policy.html#access-management) to the work that the vendor will be performing.

   * **Orientation Issue**: To support the service provider through the set up of the most common tools used at GitLab, an **[orientation issue](https://gitlab.com/gitlab-com/temporary-service-providers/lifecycle/-/issues/new?issuable_template=orientation-issue) must be created**. Assign to yourself and the professional services provider if they have a GitLab account with the required access.

### Access Request deep dive

Please read instructions on how to request access to the following applications (managed by IT):

- **GitLab:** Temporary Service Providers can follow [the instructions on how to get started with GitLab](https://about.gitlab.com/get-started/) to create a GitLab account. Be aware their username should have `-ext` postfix, e.g., .`janedoe-ext`. From there, the manager can include their username information in their access request along with the minimum groups/projects they need to complete job duties. Contractors who will make contributions to GitLab directly should be added to the `gitlab-org/contractors` group, so that automations related to triage and review can be run against their merge requests.
- **GSuite/Google Workspace**: Google Workspace access (including a @gitlab.com email address) will not be provided unless there are reasons why Temporary Service Providers would require it. Documents and shared drives within G Suite/Google Workspace can be shared outside of GitLab so a @gitlab.com email address isn't required for that purpose. Situations where we would provide access are:

    - Temporary Service Providers are _required_ to send emails from a @gitlab.com email (justification on why it is required needs to be provided)
    - Temporary Service Providers require access to a system that can only be accessed with Google OAuth (such as Kibana)
    - Temporary Service Providers require access to Infrastructure systems via Google Identity-Aware Proxy (IAP) and GCP access.
    - Temporary Service Providers will handle sensitive data (i.e. RED or ORANGE data as defined by GitLab's [Data Classification Standard](https://about.gitlab.com/handbook/security/data-classification-standard.html))

- **Okta**: Access to Okta is provisioned when Third Party Service Providers (TSPs)/non-Gitlab team members are hired as part of the AR process mentioned above, they are manually entered into a google worksheet with all of their relevant information (name, title, email, manager, onboarding issue, contract expiration date, etc.). Then, a custom Okta workflow reads the google sheet and automatically provisions base accounts for newly added entries in the google worksheet. This workflow is set to run every 15 minutes. In addition, the workflow also deactivates accounts once their termination dates are hit.
- **1Password**: More details on 1password access coming soon.
- **Slack:** Single or multi channel guest access only, unless there is a situation where this wouldn't work. Inefficiency in adding people to many channels isn't a good enough justification as we are risking providing access to confidential topics being discussed in Slack to non-GitLab team members.
- **Zoom:** Temporary service providers can create a Zoom account with their personal/work email (Non GitLab) and be invited to any meetings. No need to provide a Zoom account unless there is a situation where this wouldn't work.
- **Laptop**: Can be requested via the [access request template](https://gitlab.com/gitlab-com/temporary-service-providers/lifecycle/-/issues/new?issuable_template=access-request)
If you are accessing red or orange data you will be required to request a Gitlab laptop. IT will approve the laptop delivery based on location prior to the approval in Coupa.  If the laptop is unable to be delivered to the city or country of the TSP an exception request will need to be made [here](https://about.gitlab.com/handbook/business-technology/end-user-services/onboarding-access-requests/#exception-processes)
- **VDI [Currently Unavailable - Request Laptop instead]**: VDI can be requested for TSPs by creating an IT Engineering Issue [here](https://gitlab.com/gitlab-com/business-technology/engineering/operations/issue-tracker/-/issues/new). The requestor will need the TSPs name, email address, IP address (can be found by entering `what is my IPv4` in google search from work computer), and location (NOTE: this information should not be stored in the GitLab issue).

### Offboarding

**Please read the information below carefully, failure to follow through with the TSP offboarding process can result in compliance violations.**

- Managers of Temporary Service Providers will need to open an [offboarding issue](https://gitlab.com/gitlab-com/temporary-service-providers/lifecycle/-/issues/new?issuable_template=offboarding) in order to begin the offboarding process and ensure access is removed from the temporary service provider. **IT is only notified when the offboarding isssue is completed which triggers access termination**. 
- **If an early termination of a contractor is made, a contractor is not considered terminated until an offboarding issue is created to initiate the process. No one manager can terminate a contractor without initiating the process and getting the correct groups involved to complete the termination.** 
- Should the Temporary Service Provider become a Team Member, an offboarding issue will need to be completed at least one business day before their start date in order to ensure they have updated permissions and access.
- If no offboarding or termination date is provided in the Access Request, a default of 6 months will be applied to the account and a reminder message sent to the manager 1 week before deactivation. 
- Please ensure to list all systems the contractor had access to in the offboarding issue. 

