---
layout: handbook-page-toc
title: "Customer Digital Journey"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


## Digital Journey 

The digital journey is designed to enable customers to better self-service the educational and “best practices” consulting that Technical Account Managers (TAMs) provide in the [TAM-Assigned segment](/handbook/customer-success/tam/customer-segments-and-metrics/#tam-assigned-segment). This material is designed to help speed up time-to-value with GitLab, and to help customers adopt workflows and best practices more quickly in order to deepen their return on investment.

Digital journey content is an extension of our existing documentation and community enablement materials ([YouTube](https://www.youtube.com/channel/UCnMGQ8QHMAnVIsI3xJrihhg), [GitLab blog](https://about.gitlab.com/blog/), [case studies](https://about.gitlab.com/customers/), [forums](https://forum.gitlab.com/), [docs site](https://docs.gitlab.com/) ) designed to help organize the most relevant and most useful resources and help implementation engineers quickly become experts with advice taken from hundreds of existing customers’ experiences and unique environmental or business requirements.  The digital journey takes 30 days to complete and is followed by a survey asking for feedback on the series.

### Digital Onboarding Program

The following topics are covered through the digital onboarding series:
1. Quick guide intro and authentication
1. Setting up Group and Project hierarchy
1. Import/Export
1. GitLab Instance - Security Best Practices
1. Monitoring GitLab
1. Backing Up GitLab
1. How we guarantee backups (GitLab.com)
1. Alternative Backup Strategies
1. Support information (self)
1. Support information (GitLab.com)
1. API Intro + Rate limits (self)
1. API Intro + Rate limits (GitLab.com)
1. Where to get training

The [digital onboarding email content](https://docs.google.com/document/d/1yosBBsBqvsgBYCqkn7zv9-YsT5sTynB6khRZJi8IhPE/edit?usp=sharing) can be viewed here (GitLab only)


**Digital Journey** - [Epic](https://gitlab.com/groups/gitlab-com/customer-success/-/epics/65)

The email templates will leverage existing materials from YouTube, the GitLab blog, GitLab docs, and other GitLab and 3rd party resources to help customers. However a strong emphasis needs to be placed on making these materials easy for a busy DevSecOps team to consume quickly. As such some longer form materials may need to be adapted to a shorter format for best results.

### CI Digital Enablement (Verify) Program

The following topics are covered in the digital enablement series:
1. An intro to GitLab CI/CD
1. Let’s install GitLab Runner
1. Configuring your pipeline
1. GitLab CI in action
1. Get started with Prometheus

The [CI Digital Enablement content](https://docs.google.com/document/d/1otgcT0U4tbZJ5cGkvpzmCG7EKuSF19cR7EoPkTtRMzY/edit?usp=sharing) can be viewed here (GitLab only)

**CI Digital Journey** - [Issue](https://gitlab.com/gitlab-com/customer-success/okrs/-/issues/115)

## Roadmap

- [Customer Programs 5K< >20K Epic](https://gitlab.com/groups/gitlab-com/sales-team/field-operations/-/epics/27)
- [Customer Programs 20K< >50K Epic](https://gitlab.com/groups/gitlab-com/-/epics/1384)

### How To Use
Instructions on adding contacts to the digital onboarding journey can be found [here](/handbook/customer-success/tam/digital-journey/nominating-contacts-for-the-digital-journey/).

TAMs who wish to send Digital Journey emails to their customers can send by applying via playbooks:

#### CTA with a [Playbook](/handbook/customer-success/tam/gainsight/#ctas)
Program emails intended to be sent as a sequence have been added as Playbooks in Gainsight. These need to be sent manually by the TAM, but are setup to facilitate reminders and make this process easy, while we learn how customers want to engage. To use a playbook to send emails:
1.  In Gainsight, create a new CTA
1.  Type: Digital, choose the Playbook (example: New Customer Onboarding - Self-Managed Digital Journey). This creates a new CTA with a checklist for each email in the sequence.
1.  Click the whitespace next to the name of the next email to be sent, then on “Validate Email”.
1.  This opens an editor where you can choose contacts and modify the email before sending it.
1.  Click “Preview and Proceed” to see the fully populated and formatted email before sending.
1.  Then send the email (or save as draft).   


## Requesting a new Journey
 
To request new programs or updates, use the Sales Ops board and apply the program request or new program template. Then @mention a Gainsight administrator.
 
 
### Filtering fields
 
Below are filters program creators will likely want to use for setting up journeys. For example, we do not want to email **everyone**, do we?
 
| Title | Description | Automatic/manual? |
| ----- | ------| ------ |
| `CARR (This Account)`          | The ARR for a specific account          | Automatic          |
| `Technical Account Manager`          | The TAM for this account          | Automatic          |
| `Account Owner Team`          | The specific region (EMEA, APAC...) for the customer          | Automatic          |
| `Products Purchased (This Account)`      | What product(s) did the customer purchase? This can include multiple subscriptions, CI Minutes, etc.          |           |
| `[JB] Deployment Type`          | Options include: SaaS or Self-Managed, to track the type of customer deployment          | Automatic          |
| `Support Level`         | The level of Support the customer receives from GitLab | Automatic          |
| `Deployer`          | Customer-deployed, GitLab services, Partner services. More details on [handbook](/handbook/customer-success/tam/gainsight/deployment-types/#deployer)          | Manual          |
| `Hosting`          | TAM derived field for the customer's hosting (on-premises, cloud, hybrid, gitlab.com...). More details on [handbook](/handbook/customer-success/tam/gainsight/deployment-types/#hosting)          | Manual          |
| `Customer Conversion Source`          | Community conversion, New customer, Existing - New TAM. More details on [handbook](/handbook/customer-success/tam/gainsight/deployment-types/#customer-conversion-source)          | Manual          |
| `Provider`          | Lists the provider (AWS,GCP...) the customer uses. More details on [handbook](/handbook/customer-success/tam/gainsight/deployment-types/#provider)          | Manual          |
| `Geo?`          | True/false if they're using Geo          | Manual          |
| `High Availability?`          | True/false if they're on HA          | Manual          |
| `Technology Stack`      | Multi-pick picklist to list all technologies used by the customer    | Manual          |
 
 

