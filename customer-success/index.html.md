---
layout: handbook-page-toc
title: Customer Success
description: >-
  The Customer Success department is part of the GitLab Sales function who
  partners with our large and strategic customers to deliver value throughout
  their journey with GitLab
---
The Customer Success department is part of the [GitLab Sales](/handbook/sales) function who partners with our large and strategic customers to deliver value throughout their journey with GitLab.

The team can be reached in [Slack channel](https://gitlab.slack.com/archives/customer-success) (internal only).

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Mission Statement

To deliver value to all customers by engaging in a consistent, repeatable, scalable way across defined segments so that customers see the value in their investment with GitLab, and we retain and drive growth within our enterprise customers.

- The mission of the Customer Success Department is to provide these customers with experience in order to:
    - Accelerate initial customer value
    - Maximize long-term, sustainable customer value
    - Improve overall customer satisfaction & referenceability
    - Maximize the total value of the customer to GitLab

## Vision Page

The ["Customer Success Vision Page"](/handbook/customer-success/vision) provides the long-term view of company wide success to which the customer success will be building in partnership with the value centers of the GitLab organization (i.e., Marketing, Sales, Product/Engineering, Support, Finance and IT).

## Department Initiatives

Our large and strategic customers are in need of an ongoing partnership that combines expert guidance with flexibility and adaptability to support their adoption and continuous improvement initiatives.

These customers expect that partner to provide a streamlined, consistent and fully coordinated experience that encompasses the full span of their needs as well as the fully lifecycle of the relationship.
Need to focus on 4 main areas in order to grow in our existing accounts as well as land large and strategic:

1. Awareness
1. Adoption
1. Usage
1. Performance

### Initiative: Awareness

Opportunity to improve the overall awareness of GitLab in order to promote and evangelize our brand and solution in a meaningful way to provide big business impact to our customers so that they believe in our vision and strategy.

### Initiative: Adoption

Ensuring paying customers are successful in their onboarding in order to gain adoption and get the most out of our platform and remain happy, paying GitLab team-members and brand advocates.

### Initiative: Usage

Collecting and making use of customer data and insights is key to customer success. It’s important to do more with data and when necessary share back with customers, which in turn helps and encourages our customers to improve and drive adoption.

### Initiative: Performance

Utilizing built-in monitoring instrumentation and [a scalable HA architecture](https://docs.gitlab.com/ee/administration/reference_architectures/index.html), The Customer Success team helps ensure implementations of GitLab are operating at peak performance as organization scale and adopt more features.

## Customer Success Groups

### Solutions Architects

- [Solutions Architects handbook](/handbook/customer-success/solutions-architects/)
- [Public Sector Solutions Architects handbook](/handbook/customer-success/public-sector/solutions-architects/)

### Professional Services

- [Professional Services handbook](/handbook/customer-success/professional-services-engineering/)

### Technical Account Managers

- [Technical Account Manager handbook](/handbook/customer-success/tam/)
- [Commercial TAM handbook](/handbook/customer-success/comm-sales/#technical-account-managers)

### Demo Systems

- [Demo Systems documentation](/handbook/customer-success/demo-systems/)

## Account Team

The account team is comprised of the Strategic Account Leader/Account Executive, Solutions Architect (Enterprise), and Technical Account Manager.

[More information about the account team](/handbook/customer-success/account-team/)

## Overlap Between Solution Architects and Technical Account Managers

SA owns 1) pre-sales technical evaluation and relationships prior to the initial sale and 2) tier upgrades and new business units (i.e., connected new) within an existing customer. TAM owns 1) post-sales customer relationship and 2) license upgrades within an existing customer.

TAM engagement prior to the sale should occur in the following situations:

1. At the POV completion & presentation meeting when the results are reviewed and the next steps agreed upon
1. A shared customer issue tracking project has been created that will affect the account long-term
1. As requested by the SA if the TAM has a specific subject matter expertise relevant to the conversation

SA's will be brought back into a customer account in the following situations

1. Development of expansion plans with the SAL and TAM leading to tier upgrades
1. A new POV, product evaluation, RFP, or security begins for a "new" single team or an enterprise-wide upgrade not for renewal purposes
1. Any product license expansion that requires overviews, education, and competitive insights prior to the close
1. Any Professional Services that are being discussed and may require an SOW
1. If a TAM is over-committed or unable to support a customer request, the SA may be requested to assist
1. Support of GitLab days or other on-site evangelism of GitLab at customer sites

- [us-public-sector](https://gitlab.com/gitlab-com/us-public-sector) parent project for all public sector work
- [account-management](https://gitlab.com/gitlab-com/account-management/) parent project for account-specific work and collaboration with the rest of the sales
- [customer-success](https://gitlab.com/gitlab-com/customer-success) parent project for Customer Success employee, shared or triage work

## Other Resources

### Using Salesforce within Customer Success

Visit [this page](/handbook/customer-success/using-salesforce-within-customer-success/) for more info on using Salesforce within Customer Success.

### Using Gainsight with Customer Success

Visit [this page](/handbook/customer-success/tam/gainsight/) for more information on using Gainsight within Customer Success.

### Optimized Account Growth Program

In order to evangelize and grow the use of GitLab in existing accounts, the [Optimized Account Growth Program](/handbook/customer-success/optimized-account-growth-program) has been developed to facilitate collaborative sessions and workshops within customer environments. The program is intended to improve the partnership between GitLab and the customer, solving complex business problems while reducing cycle times and improving workflow, ultimately resulting in the growth in adoption and usage of GitLab in customer environments.

### Dogfooding

Outside of Engineering the Customer Success team has the largest concentration of tooling development capability. The team has unique needs that can't always be solved by GitLab's single DevOps platform. However, it is important to [dogfood](/handbook/values/#dogfooding) and avoid [dogfooding anti-patterns](/handbook/engineering/#dogfooding-antipatterns). As a result the [Product organization heavily weights internal customers](/handbook/values/#dogfooding) when considering prioritization. If you are considering building tooling in support of Customer Success priorities outside of GitLab, please follow the [dogfooding process](/handbook/values/#dogfooding).

### Customer Success AWS Test Account

In an effort to keep AWS spend down initiatives are being taken automatically clean up our AWS account. This account is primarily used as a proof of concept for IaC and creating demos for GitLab customers. An automated cleanup script is currently being tested that will tag, shutdown and delete old resources as they are no longer needed. The automation will:

- Turn off and Tag Un-named resources. When resources are created a "Name" tag should be created with a value that's meaningful and indicates who deployed the resource. Example: {initials}-GitLabRunner
- New Resources will be automatically tagged with a Discovered and Expiration tag.
- The Expiration tag is 14 days after the discovery. The script will only a tag an instance once. If you need additional time, please change the date to a reasonable date for cleanup (Add a month or two for prospective customers).
- If a resource needs to be permanent please set termination protection on the instance. This should also include tagging the instance with an explanation on why it's permanent and what its for.
- On expiration the resource will be shut off and left for 7 days.
- In 7 days if the instance is still off a snapshot will be taken and it will be terminated.
- If the instance is still on but the expiration has not been changed it will be terminated.

### Customer Success Tools and Scripts

By customer or internal request, we sometimes develop tools to automate certain GitLab tasks using the API. The resulting tools and scripts are publicly available for everyone to use and contribute to in the [GitLab CS Tools group](https://gitlab.com/gitlab-cs-tools).

### Communties of Practice

[Community of Practice](initiatives/communities-of-practice.html) are cross-functional groups of SME's (or aspiring to be!) within the CS organization dedicated to a topic within GitLab or the broader DevOps space. The goal is to build assets, best practices, demonstrations, and share experiences we learn from prospects and customers. In turn, CoP will build broader technical depth within our CS organization to better advise our customers and influence our product roadmap.

Anyone can establish a [Community of Practice](initiatives/communities-of-practice.html), and anyone can be a part of one. To be [efficient](https://about.gitlab.com/handbook/values/?source=post_page---------------------------#efficiency) and [transparent](https://about.gitlab.com/handbook/values/?source=post_page---------------------------#transparency), we have set guidelines on how Communities of Practice should operate.

### Frequently Asked Questions

Customer Success team members maintain a [FAQ](/handbook/customer-success/faq) to keep questions customers ask documented in a place where everyone can view and contribute to.

### Customer Success resource links outside handbook

- [Solutions Architects Onboarding Bootcamp](/handbook/customer-success/solutions-architects-onboarding-bootcamp/)
- [Customer Reference Sheet](https://docs.google.com/a/gitlab.com/spreadsheets/d/1Off9pVkc2krT90TyOEevmr4ZtTEmutMj8dLgCnIbhRs/edit?usp=sharing)
- [Sales Collateral](https://drive.google.com/open?id=0B-ytP5bMib9TaUZQeDRzcE9idVk)
- [GitLab University](https://docs.gitlab.com/ee/university/)
- [Our Support Handbook](/handbook/support/)
- [GitLab Hosted](/gitlab-hosted/)
- [Customer Collaboration Project template](https://gitlab.com/gitlab-com/account-management/customer-collaboration-project-template)
- [Workflow SA Demo Scenarios](https://docs.google.com/document/d/1kSVUNM4u6KI8M9FxoyiUbHEHAHIi34iiY25NhMxLucc/edit) (Internal Only)
- [GitLab Demo Portal](https://gitlabdemo.com)

### Other Sales Topics

- [Sales Handbook](/handbook/sales/)
- [Sales Operations](/handbook/business-ops/)
- [Sales Skills Best Practices](/handbook/sales-training/)
- [Sales Discovery Questions](/handbook/sales-qualification-questions/)
- [EE Product Qualification Questions](/handbook/sales-qualification-questions/)
- [GitLab Positioning](/handbook/positioning-faq/)
- [FAQ from prospects](/handbook/sales-faq-from-prospects/)
- [Client Use Cases](/handbook/use-cases/)
- [Proof of Value Guidelines](/handbook/sales/POV/)
- [Account Planning Template for Large/Strategic Accounts](https://docs.google.com/presentation/d/1yQ6W7I30I4gW5Vi-TURIz8ZxnmL88uksCl0u9oyRrew/edit?ts=58b89146#slide=id.g1c9fcf1d5b_0_24))
- [Sales Demo](/handbook/marketing/strategic-marketing/demo/)
- [Sales Development Group Handbook](/handbook/marketing/marketing-sales-development/sdr/)
- [With Whom to Talk to Ask Questions or Give Feedback on a GitLab feature](/handbook/product/product-categories/#devops-stages)
- [CEO Preferences when speaking with prospects and customers](/handbook/ceo/#sales-meetings)

### Customer Success Meetings

Customer Success has a few standing meetings:

- All CS Team Call - every other Thursday at 7am PST
- VP of Customer Success Office Hours - every other Thursday at 7am PST
- CS Skills Exchange - every Wednesday, alternating between 7:30am PST and 11am PST

The different groups within CS also have standing meetings, including meetings for the SAs, PS, and TAMs groups, regional groups, and social calls.

### GitLab Release Technical Showcase

Following the latest GitLab release, once a month on the All CS Team Call, we have a few volunteers to discuss and/or demo new features from the most recent release:

| GitLab Release | Feature | Presenter | Role | Region | Recording |
| -------------- | ------- | --------- | ---- | ------ | --------- |
| 12.9 | [Dismissing Multiple Vulnerabilities](https://about.gitlab.com/releases/2020/03/22/gitlab-12-9-released/#select-and-dismiss-multiple-vulnerabilities) | Sameer Kamani | Solutions Architect | Public Sector | [Video](https://youtu.be/bmiJ9LkoniA) |
| 12.9 | [Group Export and Import via API](https://about.gitlab.com/releases/2020/03/22/gitlab-12-9-released/#group-export-and-import-is-available-using-the-api) | Sameer Kamani | Solutions Architect | Public Sector | [Video](https://youtu.be/pJiTSzUi1l4) |
| 12.9 | [High Availability with Gitaly (alpha)](https://docs.gitlab.com/ee/administration/gitaly/praefect.html) | Sophie Pouliquen | Technical Account Manager | Enterprise East | [Video](https://youtu.be/LfsF8ysExpY) |
| 13.0 | [Gitaly and Praefect](https://gitlab.com/gitlab-com/sales-team/field-operations/enablement/-/issues/341) | Simon Mansfield and Christiaan Conover | Solutions Architect, Manager, TAM | EMEA and Enterprise East | [Video](https://youtu.be/jp9qY73bn3Q) |
| 13.0 | [Standalone Vulnerabilities](https://docs.gitlab.com/ee/user/application_security/vulnerabilities/index.html) <br>[Exportable Vulnerabilities Reports](https://docs.gitlab.com/ee/user/application_security/security_dashboard/#export-vulnerabilities-1) <br>[WAF SIEM Integration](https://docs.gitlab.com/ee/user/clusters/applications.html#fluentd) | Chloe Whitestone | Technical Account Manager | Enterprise East | [Video](https://youtu.be/rviHcIW3W44) |
| 13.0 | [AWS ECS Auto DevOps](https://docs.gitlab.com/ee/topics/autodevops/index.html#aws-ecs) | Mark Cesario | Solutions Architect | Enterprise East | [Video](https://youtu.be/ooepeaZqqdQ) |
| 13.0 | [Terraform Plan View in MR and HTTP Terraform State Backend](https://docs.gitlab.com/ee/user/infrastructure/) | Jamie Reid | Technical Account Manager | Enterprise West | [Video](https://youtu.be/sevdObk5HkM) |
| 13.1 | [Fail Fast Testing](https://docs.gitlab.com/ee/user/project/merge_requests/fail_fast_testing.html) | Vladimir Ten | Technical Account Manager | Enterprise West | [Video](https://docs.gitlab.com/ee/user/project/merge_requests/fail_fast_testing.html) |