---
layout: handbook-page-toc
title: "Customer Digital Journey"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


## Digital Programs Journey 

This page focuses on emails and nurture programs, owned and managed by Customer Programs in Customer Success Operations. These programs are heavily focused on creating integrated “journeys” for key moments in the customer lifecycle. Our digital approach is designed to enable customers to better self-service the educational and “best practices” consulting that Technical Account Managers (TAMs) provide in the [TAM-Assigned segment](/handbook/customer-success/tam/customer-segments-and-metrics/#tam-assigned-segment).

Strategy deck can be found [here](https://docs.google.com/presentation/d/1EsCcVqKYL1WkwFkOZDr6TV_DBJMEvrGy3ErPlJLcfPg/edit?usp=sharing). (_GitLab internal only_)

### **[ FY22 CS Program Calendar SSoT](https://docs.google.com/spreadsheets/d/12t6619gcr0eeMeHqF4wibDUqoxEkY1_QA-QJOM95Wu0/edit?usp=sharing)**
## The Content

Digital journey content is an extension of our existing documentation and community enablement materials ([YouTube](https://www.youtube.com/channel/UCnMGQ8QHMAnVIsI3xJrihhg), [GitLab blog](https://about.gitlab.com/blog/), [case studies](https://about.gitlab.com/customers/), [forums](https://forum.gitlab.com/), [docs site](https://docs.gitlab.com/) ) designed to help organize the most relevant and most useful resources and help implementation engineers quickly become experts with advice taken from hundreds of existing customers’ experiences and unique environmental or business requirements.  

## Email Nurture Programs

### Onboarding
The email templates will leverage basic onboarding enablement material provided by the Techincal Account Management Commercial segment.  A strong emphasis needs to be placed on making these materials easy for a busy DevSecOps team to consume quickly; as such, some longer materials may need to be adapted to a shorter format for best results.

The Onboarding Quick Guide project template will allow customers to self-service the materials provided from the email templates. The below video provides an overview of how to use the Onboarding Quick Guide project template.

[![GitLab Onboarding Quick Guide](https://i.imgur.com/p3ZPslJ.png
)](https://youtu.be/I0_VMLNpA_A "GitLab Onboarding Quick Guide")


**[>> Onboarding Quick Guide project template](https://gitlab.com/gitlab-com/cs-tools/gitlab-cs-tools/onboarding-quick-guide)**

**[>> Email copies for the onboarding series](https://docs.google.com/document/d/1yosBBsBqvsgBYCqkn7zv9-YsT5sTynB6khRZJi8IhPE/edit?usp=sharing)**

**[>> Epic](https://gitlab.com/groups/gitlab-com/customer-success/-/epics/65)**

### Post Onboarding Survey

**[>> Email copy for post-onboarding survey](https://docs.google.com/document/d/1B3RV2RuUkb3RzuQeNUTDz1BnpZLRwInnb_igm4ra7aw/edit?usp=sharing)**

### CI Enablement (Verify)

**[>> Email copies for the CI (Verify) series](https://docs.google.com/document/d/1otgcT0U4tbZJ5cGkvpzmCG7EKuSF19cR7EoPkTtRMzY/edit?usp=sharing)**

## Newsletters
**[>> Email copy of past and upcoming newsletters](https://docs.google.com/document/d/1Fv8B49E7FSmKDgc6uDQG51p3UAj-OsgwmdPtdAyRKcc/edit?usp=sharing)**

## Roadmap of Epics

- [Customer Programs <5k Epic](https://gitlab.com/groups/gitlab-com/sales-team/field-operations/-/epics/26)
- [Customer Programs 5k - 20k Epic](https://gitlab.com/groups/gitlab-com/sales-team/field-operations/-/epics/27)
- [Customer Programs 20k - 50k Epic](https://gitlab.com/groups/gitlab-com/sales-team/field-operations/-/epics/31)

## How To Use 

### Adding Contacts into the Digital Programs can be found [HERE](/handbook/customer-success/tam/digital-journey/nominating-contacts-for-the-digital-journey/).

### CTA with a Playbook

Program emails intended to be sent as a sequence have been added as [playbooks](/handbook/customer-success/tam/gainsight/#ctas) in Gainsight. These need to be sent manually by the TAM, but they are setup to facilitate reminders and make this process easy, while we learn how customers want to engage. To use a playbook to send emails:

1. In Gainsight, create a new CTA in the Customer 360.
1. For `Type`, choose "Digital Journey".
1. Then select the appropriate playbook (example: New Customer Digital Onboarding - Self-Managed Email Series) which will add a checklist for each email in the sequence.
1. Save the CTA.
1. Click the whitespace next to the name of the next email to be sent, then on “Validate Email”.
1. This opens an editor where you can choose contacts and modify the email before sending it.
1. Click “Preview and Proceed” to see the fully populated and formatted email before sending.
1. Then send the email (or save as draft).   

### Requesting a new Digital Program journey
 
1. To request new programs or make updates to an existing program, open an issue in the [CS Ops project](https://gitlab.com/gitlab-com/sales-team/field-operations/customer-success-operations/-/issues) and apply the program request or new program template. Then @mention a Gainsight administrator.

Below is the information from the issue template that will need to be filled out before the program will be created:
- Goal of this program: please be as specific as possible, how does this tie into OKRs and link to epics when available.
- Intended Outcome: Requester to determine what metrics (success criteria) apply. Please document the intended outcome and how it will be measured.
- Requested Launch Date / time
- Participant Criteria listed OR attach CSV List (reference filtering fields below of criteria)
- Sender name: Typically we tokenize this to come from either a TAM or AE for most outgoing communication. For a more generic send we use customer_enablement@gitlab.com
- Sender Email Address: What email address should be used?
- Provide Final Copy: please use approved copy doc

2. Once the program is created and ready to launch it will be communicated in the issue followed by metrics to demonstrate success / failures. For example:
- Open rates
- Click rates
- Unsubscribes
- Product analytics
- Seat utilization

#### Filtering fields
 
Below are filters (and if they are created automatically or manually by the TAM) that program creators will likely want to use when setting up journeys.

| Field Titles                      | Description                         | Automatic/manual? |
| --------------------------------- | ------------------------------------| ----------------- |
| CARR (This Account)               | The ARR for a specific account      | Automatic         |
| Technical Account Manager         | The TAM for this account            | Automatic         |
| Account Owner Team                | The customer region (EMEA, APAC...) | Automatic         |
| Products Purchased (This Account) | This can include multiple subscriptions, CI Minutes, etc. | Automatic |
| Deployment Type                   | SaaS or Self-Managed, to track the type of customer deployment | Automatic |
| Support Level                     | The level of GitLab Support the customer receives | Automatic |
| [Deployer](/handbook/customer-success/tam/gainsight/deployment-types/#deployer) | Customer-deployed, GitLab services, Partner services | Manual |
| [Hosting](/handbook/customer-success/tam/gainsight/deployment-types/#hosting)   | Customer's hosting (on-premises, cloud, hybrid, GitLab.com, etc. | Manual |
| [Customer Conversion Source](/handbook/customer-success/tam/gainsight/deployment-types/#customer-conversion-source) | Community conversion, New customer, Existing - New TAM | Manual |
| [Provider](/handbook/customer-success/tam/gainsight/deployment-types/#provider) | Customer providers (AWS, GCP, etc.) | Manual |
| Geo?                              | True/false if they're using Geo     | Manual            |
| High Availability?                | True/false if they're have HA       | Manual            |
| Technology Stack                  | Multi-select of all tools used by the customer | Manual |

### Methodology 
To be added
