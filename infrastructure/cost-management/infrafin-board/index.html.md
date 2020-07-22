---
layout: handbook-page-toc
title: "Infrafin"
description: "Infrafin Board"
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

----

## Infrafin Board

### Short Term Saving Initiatives Process
Some savings initiatives can happen on a much horter time horizon, either because of the urgency or because we can handle the implmenetation from within the infrastructure department. Some examples of this include purchasing CUD from GCP, or AWS savings plan to optimize the cost of our servers across the whole company, or investigating and fixing specific billing anomalies that we see over time.

#### 1. Initial Data Exploration
In this scenario, the issue is already known,  potentially because of earlier data exploration or other work, but there is still usually some data exploration to do to understand these issues better.

#### 2. Initial Cost Impact Analysis
Quantify what the impact of the issue at hand is

#### 3. Identify and Partner with SME

Partner with whoever the SME for the area is to find out how the issue can be resolved.

#### 4. Resolve the issue

Due to the nature of being bucketed as a short term initiative, these should be relatively low effort, high impact initiatives and generally these should be completed as soon as possible. The weights on these issue will automatically be set to 8

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
