---
layout: handbook-page-toc
title: "Cost Management"
---
### Resources
Cost Management Epic: https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/103

Infrafin Board: https://gitlab.com/groups/gitlab-com/-/boards/1502173?label_name[]=infrafin

## Infrafin Board
### Weekly Meeting
We have a weekly infrafin meeting on Tuesdays at 5 pm UTC to go over the status and any major updates for infrafin issues. Anything not captured directly in the issues is put in the agenda doc.

### Short Term Saving Initiatives Process
Some savings initiatives can happen on a much horter time horizon, either because of the urgency or because we can handle the implmenetation from within the infrastructure department. Some examples of this include purchasing CUD from GCP, or AWS savings plan to optimize the cost of our servers across the whole company, or investigating and fixing specific billing anomalies that we see over time.

#### 1. Initial Data Exploration
In this scenario, the issue is already known,  potentially because of earlier data exploration or other work, but there is still usually some data exploration to do to understand these issues better.

#### 2. Initial Cost Impact Analysis
Quantify what the impact of the issue at hand is

#### 3. Identify and Partner with SME

Partner with whoever the SME for the area is to find out how the issue can be resolved.

### 4. Resolve the issue

Due to the nature of being bucketed as a short term initiative, these should be relatively low effort, high impact initiatives and generally these should be completed as soon as possible.

#### 5. Follow-up
After the change has been made, confirm the numbers match close to what was expected.



### Longer Term Saving Initiatives Process
These are initiatives that require cross-team collaboration and major changes in a service or infrastructure to happen. Some examples include implementing online registry garbage collection, optimizing our internal CI usage, and changing machine types or storage types for one of our major services.

#### 1. Initial Data Exploration
The first step is to take a macro view of our infrastructure to understand where we are spending most of our money today, how fast is it growing, and where are we likely to spend more money in the future
This can be done using whatever tools are available, but today this is mainly done by going into the billing consoles for the various vendors to get a better understanding of where our spend is going.

#### 2. Decide on focus area

There are many different factors to choose from when it comes to deciding on which issues to tackle, but the main factors in descending order of important would be:

- Cost
- Customer impact
- Current and future potential growth
- Ease of solution implementation

There are some ways we can condense this data down to make it easier, such as by using a weighted MoM growth metric around certain dimensions to see what areas of our spend are both very high and also continuing to grow at a rapid pace.

#### 3. Initial Cost Estimate

Once an area to focus on has been chosen, then we can come up with a proposal about how we could change or implement something to optimize our cost, and come up with a cost estimate of what this might be. This will be the quarterly savings label, and this is the main step as an IA to do, which will help give finance and PM's a good understanding of how they want to prioritize the issue.

#### 4. Estimate of effort and timeline by SME

SME for the service/area being analyzed will decide how difficult and time intensive this solution would be to implement

#### 5. Initial Risk Estimate

Based on what SME has to say and the cost estimate, and projected growth in future, a low/medium/high risk label is assigned which specifies how much more of a problem this could be in the future if nothing is done soon, and the potential to materially impact our budget plan

#### 6. Prioritization Decision Made

PM and finance partner decide where this should fall in roadmap.

If risk is high and cost savings estimated to be over $50k/quarter, then exec sponsor chosen to oversee project to completion.

#### 7. Follow-up
Analyze the real impact of the change and expectations going forward.

### GCP CUD Purchase Approval Process
#### 1. Fill out [CUD Analysis Template](https://docs.google.com/spreadsheets/d/1yAIpX875Mjcq-DfuyFi4C-y5FaWGoAvoHmW6qHj9Rlc) with relevant details for new request
CUD Analysis should assume the other commitments do not end. CUD renewals should be looked at in a separate analysis so there is no confusion of CUD that cover new and existing covered usage.

#### 2. Fill out New GCP CUD issue template in Finance
Include and ping any engineering manager who will be significantly impacted by the change so they can confirm they do not expect major changes in their usage for the term of the commit. Include the spreadsheet from step 1 in the issue.

The template should include the commitment details, important high level financial details, and the engineering details about which services are most affected by the commitment. 

Before the commitment is considered, the infrastructure analyst should talk with the teams that use the majority of the usage that is being committed to make sure there aren't any major changes expected during the term of the commitment. 
Those teams should be cc'ed in the issue and if they have any concerns voice them at that time.

Example Issue: https://gitlab.com/gitlab-com/finance/-/issues/2377

#### 3. Once approved, execute purchase
The engineering manager assigned in the issue should make the actual purchase in the billing console. If needed, the requester should join a call with them so they can both confirm the purchase is correct.

#### 4. Add the commitment to CUD commitments [master spreadsheet](https://docs.google.com/spreadsheets/d/1qwsrRidYsYgoEIbCA6VDhdZW_P6ljeYcLMcja2bhCtc)

#### 5. Follow-Up
If a team is planning on making a major change to their infrastructure that would affect the commit during the term, they should check with the infrastructure analyst to assess the impact first.

### Cost Dimensions with examples
#### Vendor
- GCP
- AWS
- Azure
- Elastic
- CloudFlare

### Service
- Gitaly
- CI
- Patroni

### Feature
- CI Windows Runners
- Gitaly Dedicated Nodes

#### Usage Type
- Compute
- Storage
- Networking

#### Product
- Compute Engine / EC2
- Object Storage / S3

#### Sku
- N1 Predefine Instance Core running in Ameriacas
- Standard Storage US Multi-region

#### Tier
- Free
- Open Source
- GitLab Internal
- Bronze
- Silver
- Gold
