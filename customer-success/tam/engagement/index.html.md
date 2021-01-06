---
layout: handbook-page-toc
title: "Account Engagement"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [TAM Handbook homepage](/handbook/customer-success/tam/) for additional TAM-related handbook pages.

---

There are three models currently offered for Technical Account Manager engagement. These are broken into tiers that currently use Annual Recurring Revenue as a metric for determining a manageable volume for a single Technical Account Manager and the depth of involvement during the engagement.

## Managing the Customer Engagement

Technical Account Managers will typically manage customer engagements via a GitLab project in the [`account-management` group](https://gitlab.com/gitlab-com/account-management/). This project will be based off the [Enterprise](https://gitlab.com/gitlab-com/account-management/customer-collaboration-project-template) or the [Commercial](https://gitlab.com/gitlab-com/account-management/commercial/templates/new-customer-project/) Customer Success Plan Template and customized to match the customer's needs as outlined above. The project is pre-loaded with milestones, issues, labels, and a README template to help kick off the project and outline a proof of concept, implementation, and customer onboarding. The following is a short [introduction video](https://youtu.be/b8D67EJjL9w) on GitLab's first iteration of the Customer Success Plan.

### Start a new customer engagement

1. Somewhere between step 3 and step 7 of the customer journey sequence, a Solutions Architect should create a project for the customer in GitLab and include a Professional Services Engineer and Technical Account Manager who are best aligned with the customer account. This typically only applies to Enterprise accounts.
2. After the Technical Account Manager has been aligned with the account, they will assign themselves to the “Technical Account Manager” field within Salesforce.
3. The Technical Account Manager confirms that a new customer project has been created based on the [Enterprise](https://gitlab.com/gitlab-com/account-management/customer-collaboration-project-template) or the [Commercial](https://gitlab.com/gitlab-com/account-management/commercial/templates/new-customer-project/) Customer Success Plan Template. If it hasn't, they need to create it and work with the Strategic Account Leader/Account Executive and/or Solutions Architect to complete it. This _should_ have been done prior to Technical Account Management involvement for all Enterprise accounts. For Commercial accounts, the TAM will create the project once they receive the account and determine it is beneficial to have a customer project.
4. Follow the steps in the PLEASE-READ-THESE-INSTRUCTIONS.md file.

### Start a customer upgrade engagement

1. After the Technical Account Manager has been aligned with the account, they will assign themselves to the “Technical Account Manager” field within Salesforce.
1. Provided that the customer is Ruby tier or higher and in Enterprise, confirm that the customer project has been created previously during the customer journey sequence, and if not available create a project for the customer in Gitlab and include a Technical Account Manager who is best aligned with the customer account transition. For Commercial accounts, the TAM will determine if it is beneficial to have a customer project.
1. Verify that the project complies with the [Enterprise](https://gitlab.com/gitlab-com/account-management/customer-collaboration-project-template) or the [Commercial](https://gitlab.com/gitlab-com/account-management/commercial/templates/new-customer-project/) Customer Success Plan Template.
1. Follow the steps in the PLEASE-READ-THESE-INSTRUCTIONS.md file.

### Where does a Technical Account Manager fit in?

During the pre-sales process for Enterprise accounts, a Solutions Architect owns the project with assistance from the Strategic Account Leader and should include the Professional Services Engineer if there is one assigned. A Technical Account Manager is involved but only for visibility. Until the account becomes a paying customer the project remains in pre-sales. Once the customer has paid, the Strategic Account Leader will set up the "Welcome to GitLab" call along with the key GitLab employees (SAL, SA, PSE and Technical Account Manager) and the customer. There is a preloaded issue for this in the project template.

For Commercial accounts, the Account Executive owns the pre-sales process and [engages a Solutions Architect](/handbook/customer-success/solutions-architects/#commercial-engagement-model) as needed. Once the account becomes a paying customer, the Technical Account Manager will create a customer project if it will be useful to their relationship with the customer, and the Account Executive will schedule a "Welcome to GitLab" call with the customer and the Technical Account Manager.

The "Welcome to GitLab" call will introduce the customer to the Technical Account Manager and begin the handover process. The Technical Account Manager will then lead the rest of the call and own the customer project. If the project was created in the pre-sales project under the [`pre-sales account-management` group](https://gitlab.com/gitlab-com/account-management/pre-sales), then it is moved to a post-sales project under [`account-management` group](https://gitlab.com/gitlab-com/account-management).

### Customer Engagement Tips
1. Make use of the [account management projects](https://gitlab.com/gitlab-com/account-management)  ([Template](https://gitlab.com/gitlab-com/account-management/templates/customer-collaboration-project-template))
1. Whenever a customer asks a question via email/Slack, kindly prompt them to open a Support ticket or an issue in the collaboration project
  * Examples of a Support issue: Reporting Gitlab downtime, errors or accesibility problems 
  * Examples of a Collaboration Project Issue: Gernal questions about product usage, best practices or recommendations, adoption or integration questions 
1. Show customers the power of GitLab by using GitLab with them (ex: related issues, tracking milestones, threaded conversations, ability to interact directly with GitLab’s product/engineering teams)
1. Make sure you are responding in a timely manner to customer's open issues. When you are prompt to respond, the customer is more likely to continue using the account management projects
1. Have discussions in the public issues as much as possible. If there is a question/discussion point that requires interaction with the GitLab Engineering and Product teams, post it in the public issue, as it most likely benefits everyone reading the public issue.
1. When adding a SFDC link to a public issue, remember to [provide feedback](/handbook/product/how-to-engage/#a-customer-expressed-interest-in-a-feature) to the product managers using the [feedback template](/handbook/product/how-to-engage/#feedback-template)
