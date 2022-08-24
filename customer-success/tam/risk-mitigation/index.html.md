---
layout: handbook-page-toc
title: "CSM Strategies for Mitigating Risk In Customer Accounts"
description: "CSM Strategies for Mitigating Risk In Customer Accounts"
---
 
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## **Types of Risk**
We have identified these as the most common types of risk in an account...

- **Cost/Budget**
   - Over License
   - Acquisition by larger entity
   - Downsizing (ie, Covid related)
- **ROI** (the customer doesn't feel they're getting value)
   - Not a priority
   - Lack of a plan
- **Competitive**
- **Product** (the product does do what they want or meets their needs or isn't mature enough)
- **Product Usage** (not using features & functionality they've paid for... Ex. Ultimate customer not using Secure)
- **Lack of Engagement/Loss of Champion**

## **Discovery into the Risk**
Based on the identified type of risk, the CSM can use some of the following questions to dig a bit deeper into the risk that may help identify mitigation options...

### Cost/Budget
   - Over License
      - `Do you know how to regularly prune inactive users?`
      - `Are you aware of our "User Cap" functionality?`
   - Acquisition by larger entity
      - `What is the integration plan and timeline with the new entity?`
      - `Will you be required to adopt their toolchain?`
      - `Do they have any existing MSA's in place that you'll be required to follow?`
      - `What tools does the new entity use?`
   - Downsizing (ie, Covid related)
      - `Do you anticipate a re-hiring of laid-off workers? If so, what's the timeline?`
   - `What's your fiscal year?`
   - `Have you budgeted for a certain number of users?`
   - `Do you have a growth plan for adding users over time?`
   - `Do you understand our licensing (ie, true-ups)?`

### ROI (the customer doesn't feel they're getting value)
   - Not a priority
      - `What are your devops priorities? How can we align with those?`
   - Lack of a plan
      - `How can we help you adopt greater use and derive greater value from GitLab?`
   - `Where do you feel you're getting the most value out of GitLab right now?`
   - `Where do you feel you're getting the least value out of GitLab right now?`

### Competitive
   - `Where do you feel other products are stronger or provide more value that GitLab?`
   - `Is this a pricing issue or a feature issue?`

### Product (the product does do what they want or meets their needs or isn't mature enough)
   - `Have you worked with your CSM on a prioritized list of features?`
   - `What feature(s) do you need **right now** to continue using GitLab?`
   - `Where do you see more opportunity to replace other tools if GitLab was more mature?`

### Product Usage (not using features & functionality in their license tier)
#### Ultimate Customer not using Secure
   1. `What kind of security tests are mandated or recommended within your organization?`
      - If they give any answer related to 3rd party products, just to question 2.
      - If they say “nothing is mandated/recommended”, ask “why”.
      - Adoption is shown to increase dramatically when leadership has bought into the solution and mandates usage.
   1. `What tools are you using to meet those mandates?` 
      - Third-party or custom-built in-house solutions? 
      - Are those specific tools mandated or do teams have the freedom to choose what they use?
   1. `Does your organization have a concrete shift-left or DevSecOps initiative in play?`
      - If “Yes”... “Tell me about that in terms of tooling and timelines.”
   1. `Are you aware that you can enforce compliance and security testing at the group level using our compliance frameworks?`
      - If they say “No”, arrange for enablement around compliance frameworks.
      - If they say “Yes”, follow up with “Are you using them to ensure security compliance?”


### Lack of Engagement/Loss of Champion
   - `Who is in charge of maintaining GitLab going forward?`
   - `Is there someone in your organization in charge of tool adoption or change management?`

## **Mitigation**
Once we know the risk and done some discovery into that risk, we have some options available to help mitigate that risk...

### Cost/Budget
- Explore cloud provider retiring spend
   - Lots of company's have minimum amounts they have to spend on the cloud every year to continue receiving discounts. They can use that spend on GitLab and we only take a 3% haircut to the cloud provider, but its better than 100% churn.
- Help identify other redundant tools that GitLab can replace.
   - Good areas to target are CI/CD tools, Package tools (eg. Artifactory) and Security tooling

### ROI
- This can be used as part of the cost/budget risk mitigation strategy.
- Product Marketing has been helpful in putting together generic ROI decks that can be tailored to a specific customer.
- Our marketing page has an ROI calculator... https://about.gitlab.com/calculator/

### Competitive
- Product Marketing has numerous battle cards based on the competitor [linked in our handbook](https://about.gitlab.com/handbook/sales/qualification-questions/#additional-questions-if).
- Seek help in the #competition Slack channel
- It's very important to determine the "why this competitor" instead of the "who is the competitor". The why is usually a cost or feature/functionality disparity. This will also help determine mitigation.

### Product
- Based on the discovery questions, identify the gaps.
- If it's a maturity problem, each product Stage has a roadmap page in the handbook. Product Managers are also generally very happy to get on a call with a customer to discuss the roadmap and to listen to the customer's needs and wants.
- If its a functionality gap, make sure that you've identified all the gaps and added the customer to the relevant issues using the [Product Feedback Template](https://about.gitlab.com/handbook/product/how-to-engage/#feedback-template). Its also a good opportunity to get a PM on a call with the customer to help advocate for these issues and get them on the roadmap.

### Product Usage (not using features & functionality in their license tier)
#### Ultimate Customer not using Secure
- Offer a [Secure Workshop](https://about.gitlab.com/handbook/customer-success/workshops/secure/)
- Try to come up with an adoption strategy that will get them to use more Secure
- Try to identify teams who are willing to test out Secure functionality at a small scale
- Try to engage with the Security team to find out what policies aren't being followed
- Try to engage with the Economic Buyer and let them know of the lack of adoption and your concerns
   - Encourage them to implement a top-down mandate to use more GitLab Secure

### Lack of engagement/Loss of champion
- For lack of engagement, please see our [Strategies for Non-Engaged Customers](https://about.gitlab.com/handbook/customer-success/tam/engagement/Non-engaged-customer-strategies/) handbook page.
- For a loss of champion, this will require more legwork from the CSM and SAL.
   - Identify who's replacing your champion and cultivate that relationship.
   - Find someone who loves GitLab and include them in future calls (if they aren't already).
   - Don't be afraid to leverage our executive contacts to reach out to the customer at the highest levels.
   - Even if a champion leaves, there's still going to be someone in a position of authority who can advocate for us. Find that person.

