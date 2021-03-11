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
1. Onboarding Introduction and Enrollment
1. Quick Guide Intro and Authentication
1. Setting Up Group and Project hierarchy
1. Import/Export
1. GitLab Instance - Security Best Practices
1. Monitoring GitLab
1. Backing Up GitLab
1. How we guarantee backups (SaaS)
1. Alternative Backup Strategies
1. Support information (Self-managed)
1. Support information (SaaS)
1. API Intro + Rate limits (Self-managed)
1. API Intro + Rate limits (SaaS)
1. Where to get training

The digital onboarding email content in full can be found in a GitLab-only [Google Doc](https://docs.google.com/document/d/1yosBBsBqvsgBYCqkn7zv9-YsT5sTynB6khRZJi8IhPE/edit?usp=sharing). We also have an [epic](https://gitlab.com/groups/gitlab-com/customer-success/-/epics/65) outlining the digital journey and our goals for it.

The email templates will leverage existing materials as mentioned above to help customers. A strong emphasis needs to be placed on making these materials easy for a busy DevSecOps team to consume quickly; as such, some longer materials may need to be adapted to a shorter format for best results.

### CI Digital Enablement (Verify) Program

The following topics are covered in the digital enablement series:
1. An intro to GitLab CI/CD
1. Let’s install GitLab Runner
1. Configuring your pipeline
1. GitLab CI in action
1. Get started with Prometheus

The CI Digital Enablement content can be found in a GitLab-only [Google Doc](https://docs.google.com/document/d/1otgcT0U4tbZJ5cGkvpzmCG7EKuSF19cR7EoPkTtRMzY/edit?usp=sharing). We also have an [issue](https://gitlab.com/gitlab-com/customer-success/okrs/-/issues/115) describing the CI Digital Journey and what we're working towards.

### Roadmap

- [Customer Programs <5k Epic](https://gitlab.com/groups/gitlab-com/sales-team/field-operations/-/epics/26)
- [Customer Programs 5k - 20k Epic](https://gitlab.com/groups/gitlab-com/sales-team/field-operations/-/epics/27)
- [Customer Programs 20k - 50k Epic](https://gitlab.com/groups/gitlab-com/sales-team/field-operations/-/epics/31)

### How To Use

Instructions on adding contacts to the digital journey can be found in [the handbook](/handbook/customer-success/tam/digital-journey/nominating-contacts-for-the-digital-journey/).

TAMs who wish to send Digital Journey emails to their customers can send them via playbooks:

#### CTA with a Playbook

Program emails intended to be sent as a sequence have been added as [playbooks](/handbook/customer-success/tam/gainsight/#ctas) in Gainsight. These need to be sent manually by the TAM, but they are setup to facilitate reminders and make this process easy, while we learn how customers want to engage. To use a playbook to send emails:

1. In Gainsight, create a new CTA in the Customer 360.
1. For `Type`, choose "Digital Journey".
1. Then select the appropriate playbook (example: New Customer Digital Onboarding - Self-Managed Email Series) which will add a checklist for each email in the sequence.
1. Save the CTA.
1. Click the whitespace next to the name of the next email to be sent, then on “Validate Email”.
1. This opens an editor where you can choose contacts and modify the email before sending it.
1. Click “Preview and Proceed” to see the fully populated and formatted email before sending.
1. Then send the email (or save as draft).   

### Requesting a new Journey
 
To request new programs or updates, open an issue in the [CS Ops project](https://gitlab.com/gitlab-com/sales-team/field-operations/customer-success-operations/-/issues) and apply the program request or new program template. Then @mention a Gainsight administrator.

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

