---
layout: handbook-page-toc
title: The Compensation Calculator
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Introduction

On this page, we explain the different factors that make up our Compensation Calculator and its alignment to GitLab's values and Compensation Principles.

## The Compensation Calculator

As a natural extension of the [Compensation Principles](/handbook/total-rewards/compensation/#gitlabs-compensation-principles) outlined above and our commitment to transparency, sharing, efficiency, directness, and boring solutions (see our [values](/handbook/values)) we developed a Compensation Calculator.
The compensation of executives and anyone on a quota is not set with the calculator. We use a Compensation Calculator because it help us align compensation to our values:

1. **Transparency** - The calculator is open to everyone, within and outside of GitLab. This means that at the time of hiring, candidates don’t have to blindly negotiate compensation. They simply need to enter the individual inputs on the Compensation Calculator and it comes up with a band consistent with the individual’s circumstance - where they live, their Compa Group, level, currency, etc. When team members move across levels, departments and locations during their time at GitLab, they’ll also be able to see the appropriate band for the change.
1. **Efficient** - There’s no need to have multiple back-and-forth conversations between team members, managers, recruiters and the Total Rewards team. For hiring managers and recruiters, they simply use the Compensation Calculator for the roles they’re hiring for rather than having multiple approval levels and conversations. Similar with promotions and any other changes with locations, benchmarks, levels, team members and managers can discuss compensation according to the inputs on the Compensation Calculator rather than having negotiations.
1. **Diversity, Inclusion & Belonging** - People with the same attributes should earn the same. The Compensation Calculator reduces unconscious bias or giving higher pay to individuals who can negotiate better. The Compensation Calculator allows us to take a data-driven approach to compensation where there's fairness across all teams, levels and countries.
1. **Collaboration** - Allows for team members to review the Compensation Calculator and have the Total Rewards team iterate based on the data and feedback we get from the team.
1. **Iteration** - The Compensation Calculator gets reviewed when feedback is received and all inputs are reviewed during the Annual Compensation Review.
1. **Results** - The Compensation Calculator helps us focus on our outputs rather than spending unnecessary time talking about and negotiating money. It shifts conversations and focus from ‘I want X money’ to looking at the training and mentorship necessary for our team members to move from one Compa Group to another.

### Goals of the Compensation Calculator

The goals of the calculator are:

1. Calculate compensation for 200+ regions all over the world.
1. Based on a simple formula.
1. People with the same attributes should earn the same.
1. The adjustment for [paying local rates](/handbook/total-rewards/compensation/#paying-local-rates) should be the same if you are in the same location.
1. You should be able to calculate your compensation in case you know or made an assumption about your level and experience.
1. That it is as close to a [competitive rate](/handbook/total-rewards/compensation/#competitive-rate) as possible given the other constraints.
1. Be able to calculate compensation for most of our offers without involving a compensation specialist.

### Use the calculator

The calculator is embedded in every [job family](/handbook/hiring/job-families/) page but we also have a [calculator that lets you select the job family](/handbook/total-rewards/compensation/compensation-calculator/calculator/).

### The Compensation Calculator Formula

Your compensation = [SF benchmark](#sf-benchmark) x [Location Factor](#location-factor) x [Level Factor](#level-factor) x [Contract Factor](#contract-factor) x [Exchange Rate](/handbook/total-rewards/compensation/#exchange-rates)

The calculator will output the amount as `base + variable = total target cash (TTC)`

Your options can be found on [stock options](/handbook/stock-options/).

See the calculator in action on each job description, or at its [home page](/handbook/total-rewards/compensation/compensation-calculator/calculator/).

The compensation calculator is updated in January and July with the proper exchange rate, keeping compensation levels in line with local purchasing power.

### Disclaimer

The compensation calculator is a tool to assist the Total Rewards team in determining a compensation package for new and existing team members. The results of the calculator are not binding. Written correspondence through a [contract or letter of adjustment](/handbook/contracts/#employee-contractor-agreements) specify all official compensation changes. We reserve the right to change the calculator at any point in time.

### Reporting a Discrepancy

As with all things at GitLab, the compensation calculator is a constant work in progress. There are a few options for reporting a discrepancy if you find the calculator isn't outputting data that is true to market.

**If you are an internal GitLab team member or external to GitLab:**

* Create an issue utilizing the issue templates.
   * [Requesting a review of a new location factor.](https://gitlab.com/gitlab-com/people-group/total-rewards/-/blob/master/.gitlab/issue_templates/new_location_factor.md)
   * [Requesting a review of an existing location factor.](https://gitlab.com/gitlab-com/people-group/total-rewards/-/blob/master/.gitlab/issue_templates/review_existing_location_factor.md)
   * [Requesting a review of a benchmark.](https://gitlab.com/gitlab-com/people-group/total-rewards/-/blob/master/.gitlab/issue_templates/review_benchmark.md)
* Email total-rewards@domain for more personal inquiries.

**If you prefer to remain anonymous:**

* You can use the [Reporting a Compensation Discrepancy Form](https://forms.gle/tEmiwzYxCJqZhivF8).
   * Providing an email is optional, but we will only reach out directly with any updates if an email is provided.

### Rounding Best Practice

Previously, our compensation calculator and processes (percentage changes from compensation review, relocations, currency fluctuations, etc.) produced numbers that were exact, sometimes down to the dollar and cents. To make the numbers more digestible, we are implementing a practice to round up compensation in the local currency to the nearest hundredth. This rounding practice applies to future compensation changes from July 2020 onwards.

## SF Benchmark

### Introduction

`SF benchmark` is the employee compensation at a compa ratio of 1.0 at or above market for the role in San Francisco, which we [determine](#benchmark-evaluation-for-existing-roles) using various sources of survey data: Radford, Comptryx, AdvancedHR. We only use crowd sourced data (Paysa, Payscale, etc) when no survey data is available. The SF benchmark used in each position is available in the [`job_families.yml` file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/job_families.yml) in this [website's repo](https://gitlab.com/gitlab-com/www-gitlab-com/tree/master/).

### Benchmark Evaluation

### Benchmark Types

Benchmarks are determined based on the following types: Individual Contributor (IC), Manager, Director, Senior Director. The next iteration to our job families is to have the entire career progression and calculator in one place. Please see the following [issue](https://gitlab.com/gitlab-com/people-group/Compensation/issues/79) for more information on the progress. In the [`job_families.yml` file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/job_families.yml) the Total Rewards team will add an entry for each type listed within the job family. For example:

```yml
  ic_ttc:
    compensation: 100000
    percentage_variable: 0
    from_base: true
  manager_ttc:
    compensation: 140000
    percentage_variable: 0
    from_base: true
  director_ttc:
    compensation: 180000
    percentage_variable: 0.15
    from_base: true
  senior_director_ttc:
    compensation: 220000
    percentage_variable: 0.15
    from_base: true
```

Note: Where there is no variable component offered (ICs and Managers) GitLab runs the benchmark evaluation off of base salary only. Where there is a variable component offered, GitLab runs the benchmark evaluation off of Total Target Case (TTC).

#### Benchmark Evaluation for Existing Roles

Benchmarks are evaluated annually as part of the Annual Compensation Review process. Benchmarks can also be [adjusted](#benchmark-adjustment)  as needed throughout the year.

To analyze benchmarks:
1. Use the [job code](#job-codes) as the unique identifier to match all data.
1. Outline whether the role is Base or TTC (Total Target Cash) to pull data accordingly.
1. Add in the Radford and Comptryx Job Code.
1. Generate a formula to look up the proper survey data from both Radford and Comptryx at the 50th and 75th percentile.
1. Propose an updated benchmark taking the maximum of the 50th percentile median or the current benchmark.
1. Evaluate the percent change.
1. Generate a merge request to update the benchmark on the [`job_families.yml` file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/job_families.yml) and assign to the executive of the group for approval.
1. Evaluate any impact to the current team if this benchmark change is done outside of annual compensation review.

#### New Benchmark

Whenever a new [role](/handbook/hiring/job-families/) is established, a new benchmark must also be determined. The Total Rewards team is pinged on the merge request for a compensation review to start the process. The Total Rewards team should ensure that the request is not for a role that already exists and has a benchmark.

Compensation Benchmarking is the process of using internal job descriptions to match salary survey jobs in order to identify the external survey data for each benchmark positions. Compensation data can fluctuate from very high salary data to very low salary data for roles that have the same or similar job titles. Example would be Field Marketing Manager. A Field Marketing Manager at GitLab or another SaaS or Technology company salary benchmarks would and can be included with Field Marketing Manager for other Non Technology companies, as an example RedBull. Though they have the same "title" the role, scope and salaries for these roles are very different. Based on these variants in comp data we will look at the relevant comp data for each role and use the median for the benchmark.

Each new job family will be assigned a [job code](#job-codes) and evaluated through the same process as [for existing role](#benchmark-evaluation-for-existing-roles).

To review the Compensation Benchmark process please refer to the [New Roles Creation](/handbook/hiring/job-families/#new-job-family-creation-or-additional-levelrole-within-a-current-job-family).

#### Benchmark Adjustment

As stated in [competitive rate](/handbook/total-rewards/compensation/#competitive-rate) we want to recruit and retain people who meet our requirements.
If more than 20% of the people do not accept our offers stating compensation as a reason this is an indication we're not offering a competitive rate.
In this case the People Ops Analyst can review the compensation. During this review, we do not look to target at a certain percentile, but instead look at market rates and declined candidate offers when adjusting. A business case should be presented to the compensation group after approval from the Total Rewards Analyst in a google sheet with market data, candidate expectations, an impact to the current team; and in a google doc outlining the problem statement, likely cause, what the department has already tried, and an overall proposal which clarifies the budgetary impact.

If we change our [SF benchmark](#benchmark-adjustment) for a job family without changing the requirements, we change the compensation both for existing team members and new hires. If the SF benchmark is changed together with the requirements this review might happen at the time of the change or in our yearly cycle.

Sometimes the requirements of a job family change. Usually this means the requirements become more restrictive as the complexity of our project and services demands more--or more specific--experience. This is different from a market adjustment because the market has not necessarily changed. This means that everyone on that benchmark does not get an automatic raise.

However, we want everyone who works at GitLab prior to a role requirement change to the have the same opportunity as new hires. They and their manager can then immediately begin technical and career development using the new role requirements. Promotions against this new criteria can also be requested on their own cadence.

It's not necessary, but it's easier for the organization to digest a benchmark change resulting from changes in a job's requirements if the name of the role changes as well. Two examples are:

* Production Engineer -> Site Reliability Engineer (SRE)
* Developer -> Backend Engineer
* UX Designer -> Product Designer

### Job Codes

To automate the process of pulling survey data from Comptryx and Radford to review benchmarks, GitLab has mapped each job title with a corresponding job code. As a first iteration GitLab will use the job codes Radford has outlined. Each job family and level must have a unique job code. The following structure is used:

* Radford Code to be used as job code.
* If there is a duplicate Radford code, the job code in BambooHR will have a letter behind to differentiate (A, B, C, etc).
* If there is no job code, GitLab will generate a four digit unique job code starting with "N".

For example:
Backend Engineer = 5163
Senior Backend Engineer = 5164
Distribution Engineer = 5163A
Senior Distribution Engineer = 5164A

All current job codes can be found by the Total Rewards team in the "Job Codes" google sheet on the Final Job Code Tab.

As a second iteration, GitLab will review whether or not we should generate our own job codes.

## Location factor

### Introduction

Location Factor is [calculated](#calculating-location-factors) using multiple data sources to conduct a market analysis of compensation rates globally: Economic Research Institute (ERI), Numbeo, Comptryx, Radford, Robert Half, and Dice. This is _not_ a cost of living analysis, but instead a **cost of market** evaluation compared to San Francisco. The location factors are stored in the [data file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/location_factors.yml) on GitLab. The Total Rewards team will use their best judgement in determining the input per location based on our [Compensation Principles](/handbook/total-rewards/compensation/#gitlabs-compensation-principles).

### Geographical Areas

The location factor depends on your [geographical area](#geographical-areas). To determine geographical areas as it relates to compensation, we looked at what the [United Nations](https://unstats.un.org/unsd/methodology/m49/) outlines globally.

To determine your area:

   1. Select the country you live in. This will filter out all areas outside of your country. Based on the remaining choices under "area," if you live within a commutable one hour and forty-five minutes of a city listed, you may use that as your location. If you are within a commutable one hour and forty-five minutes of more than one city, the city with the shortest commute would be used as your location. If not, you will select "Everywhere else." If the only item listed for the country is "All," the country has the same location factor regardless of the city you live in. If applicable, a state or province might be listed instead of a city.
   1. If your country is not listed, reach out to total-rewards@domain to gather relevant data.
   1. When you move, [you have to inform People Ops and Total Rewards](/handbook/people-group/contracts-and-international-expansion/#relocation) and your compensation may be adjusted up or down. Refer to Total Rewards Analysts to see what the likely impact will be.

### Calculating Location Factors

GitLab will gather and analyze the data for each location factor annually as part of annual compensation review. We will also iterate on location factors as needed throughout the year.

1. Data Gathering
   * ERI: Review the Cost of Market Analysis of each Geo Area to San Francisco at the 100,000, 125,000, and 150,000 salary rate. Take the average of all three data points.
   * Numbeo: use the Numbeo rent index normalized to San Francisco, or in math terms, `(.7 x (Rent Index/1.26) + 0.3)`.
     * Numbeo's rent index is a valuable resource as we may not have proper data to conduct the analysis in all countries or geo areas.
   * Robert Half: For US and Canada, Robert Half has salary differential information based on each geo area. Normalize this data as a fraction of SF.
   * Dice: Using the Results from the Dice Tech Salary Report, take the differential of the geo area to SF.
   * Comptryx: Pull a report from Comptryx with all job families in SF as well as each location available in Comptryx to evaluate the differential to market.
   * Radford: Pull a report from Radford with all job families in SF as well as each location available in Radford to evaluate the differential to market.
   * In reviewing the data set, determine if a new geo area needs to be added to the list.
1. Data Analysis
   * Take the maximum of:
     * the average of all data sources rounded down to the nearest 0.05 OR
     * the current location factor (so as to not reduce location factors).
   * Analyze the output based on geo areas to adjust location factors where needed. Add a comment with the rationale for the adjustment.
     * Reasons why the formula may be adjusted:
        * Not enough number of data points for the output to be statistically relevant
        * Adjusted to align with other metros in geo
        * Decreased to remove inflated metro data in everywhere else location factors
   * When analyzing: Focus on where we are having troubles recruiting, retaining, or have a smaller population of team members as these can be indicators of a misalignment in the region.

## Level Factor

Level Factor is currently defined as:

* Junior: 0.8 x ic_ttc
* Intermediate: 1.0 x ic_ttc
* Senior: 1.2 x ic_ttc
* Staff/Manager: 1.0 x manager_ttc
* Senior Manager: 1.2 x manager_ttc
* Director: 1.0 x director_ttc
* Senior Director: 1.0 x seniordirector_ttc

Not all levels of each job follow this same nomenclature. A summary of the naming of levels per role can be found in [role_levels.yml](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/role_levels.yml).

### GitLab Job Grades

GitLab job grades aid in mapping a role for internal equity with respect to cash and equity. For example, you can see the grade for each [role level](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/role_levels.yml) and the [stock options](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/equity_calculator.yml) in their respective yml file. For example, if there is a stock option update, this mapping can act as a reference to update the compensation calculator for the various roles to ensure alignment. Job Grades can also provide an alternative path to finding the current number of options offered without having to fill out the compensation calculator.

**Professional/Technology**:

| Grade	| Management       | Individual Contributor    |
|-------|------------------|---------------------------|
| CEO   | CEO              |                           |
| 14    | EVP/CXO          |                           |
| 12    | VP               | Fellow                    |
| 11    | Senior Director  |	                         |
| 10    |	Director	       | Distinguished             |
| 9.5   | Manager, Product | Principal Product Manager |
| 9	    | Senior Manager   | Principal <br> Senior Product Manager    |
| 8	    | Manager          | Staff <br> Product Manager <br> Consultant |
| 7			|                  | Senior	                   |
| 6			|                  | Intermediate              |
| 5			|                  | Junior                    |
| 4			|                  | Intern                    |


**Sales/Sales Development**:

| Grade	| Management      | Individual Contributor          |
|-------|-----------------|---------------------------------|
| CEO   | CEO             |                                 |   
| 14    | EVP/CXO         |                                 | 
| 12    | VP              |                                 |
| 11    | Senior Director |	                                |
| 10    |	Director	      |                                 |
| 9.5   |                 |                                 |
| 9	    | Manager (Sales) <br> Senior Manager (Sales)        |         	                      |
| 8	    | Manager (Demand Generation)                |	Enterprise & Customer Success   |
| 7			|                 | Mid Market                      |
| 6			|                 | SMB/SDR Lead & Acceleration                             |
| 5			|                 | Analyst/ SDR  |

## Compa Ratio

### Upcoming Iterations

We have renamed experience factor to Compa Ratios.

As part of the first iteration towards this change, the Annual Compensation Review will still use the output of the what was previously the experience factor worksheet, but completing the worksheet itself will be optional and will generate a range instead of specific number. For example, the output would be a compa group of growing in the role, instead of an experience factor of 0.97.

In FY 2021 We will develop and release a new tool to assess compa group.

### Introduction

The Compa Ratio is the range spread of the base salary calculator. Specifically, the compa ratio has a 30% spread (+/- 15% from the median). It is common to see [range spreads up to 50%](https://www.erieri.com/blog/post/common-compensation-terms-formulas).

### Determining

If you have any questions around Compa Ratios or determining Compa Groups, please feel free to [open an issue](https://gitlab.com/gitlab-com/people-group/Compensation/issues) or email total-rewards@domain.

#### Compa Group

The Compa Group is determined by the direct manager for each team member, and reviewed by all indirect managers. This is officially done (and entered into BambooHR) once per year: during the Annual Compensation Review for current team members and during the offer stage for candidates. We do not typically do off-cycle compa group increases. However, this does not mean that compa groups should only be discussed annually. There should be an ongoing conversation with the team members to ensure they understand the path forward for growth and development.

This factor does not directly reflect years of work experience, but instead, demonstrated ability to drive projects and deliverables from the position description to completion within GitLab. It also does not reflect the performance of the team member in comparison to their peers. You may have a lot of top performers in your team but they won’t all necessarily have the same Compa Group. The goal of narrowing Compa Groups from Compa Ratios, as it relates to compensation, is to ensure they are accurate to work toward getting to the right salary.

If a manager is new to the team member, and has not had time to assess the Compa Group, collaboration with previous managers or colleagues is encouraged as a strong data point when assessing.

Compa Ratios are broken down into the following four Compa Groups:

* **Learning:** Recently promoted or new to the role. Needs a lot of guidance from the manager with the majority of tasks to understand requirements and deliverables expected.
* **Growing:** Understands most of what is expected for deliverables, but needs some guidance with tasks to drive projects to completion.
* **Thriving:** Understands all aspects of the role, needs limited guidance to drive advanced projects to completion.
* **Expert:** Understands all aspects of the role, with almost no guidance to drive projects of any complexity to completion and able to demonstrate this consistently. Once a team member becomes an expert within their current level, the next step may be promotion if a role at the next level is needed at the company.

Breakdown of the Compa Group mathematically:

| Compa Group                | Compa Ratio Range |
|----------------------------|-------------------|
| Learning the role          | 0.85-0.924        |
| Growing in the role        | 0.925-0.999       |
| Thriving in the role       | 1.0-1.074         |
| Expert in the role         | 1.075-1.15        |


1. Using the compa groups, determine where your direct report aligns based on their knowledge, skills, and ability in their current role. This compa group can incorporate soft skills and job requirements, but should not take into account requirements or responsibilities that are outside of the scope of the Job Family and level.
1. If you are not sure on how to classify your direct reports based on the descriptions above, you can use the [Optional Compa Group Worksheet](https://docs.google.com/spreadsheets/d/1Se66ZXrRKetMXEPOM2kRptiupCYLzwJrzpRxs0ITP4g/edit?usp=sharing) by saving a copy in the name of your team member. The worksheet is **optional**, but may be a helpful tool if you are not sure what classification your team member would fall into.
  * Use the role description, including any appropriate requirements or responsibilities, to help populate the responsibility line items in the worksheet. It is important to take all aspects of the position description into account when determining compa group. If the position description isn't correct, use this as an opportunity to update it. Also be sure to update the soft skills section of the worksheet. The percentages are the same for each team member at GitLab, but level should be taken into account when evaluating experience.
  * Please add the file to BambooHR. Login to BambooHR and go to your team member's profile. Click on the documents tab. Upload the file to the "Compa Group Worksheets" folder and select the option to share the file. Sharing the file will allow the team member to also view the worksheet.
  * The most recent [feedback cycle](/handbook/people-group/360-feedback/) can be a helpful tool when distinguishing the compa group the team member is currently performing at.
    * Feedback reviews should not be about judging, but helping people. We do not want feedback reviews where people are holding back, so these metrics are different as compa ratios are used within the compensation tool.
1. Whether you use the worksheet or not, it is critical that all managers are able to explain the compa group with the respective team member, including how they arrived at that classification.
1. If reviewing as part of annual compensation review: Add the Compa Group to BambooHR. Please note that only the direct manager will be able to submit the Compa Ratio request. If the reporting relationship is not accurate, please update the manager through a job information request to ensure they are reporting into the right person. If you have any issues here, please email total-rewards@domain.
  * Login to BambooHR
  * Go to the team member's profile. At the top right hand corner select "Request a Change"; from that list you will want to pick "Compa Ratio".
  * Enter in today's date
  * From the Comp Group drop down select the proper classification.
  * You may include an optional comment (for example a link to the compa group worksheet if used).
  * Click "Submit"
  * The request is then forwarded to the manager's manager for final review and approval before automatically being uploaded to the BambooHR profile.
1. If reviewing off cycle from annual compensation review: Add the Compa Group as a comment in the BambooHR request.

It is important to note that deriving an compa group based on the current compensation calculator is not advised. Compa groups should be based on the knowledge, skills, and ability in the current role. Second, the output of the compensation calculator may change due to the review of all inputs. We want each team member's pay to be an accurate reflection of their market, with the caveat that we adjust once a year in order to reduce the overhead of the adjustment process.

#### Compa Group Communication

The following is a suggested communication strategy for managers when evaluating the Compa Group of their direct report/s. 

1. The team member and their manager should have a conversation on where the team member believes their knowledge, skills, and ability align to as it relates to Compa Groups. 
    * The manager should stress that the Compa Group discussed during this conversation may not necessarily be the team member's final Compa Group. This is simply a discussion to help inform the manager's evaluation. 
1. The manager will weigh the team member's feedback with their own evaluation of the team member to arrive at the team member's Compa Group.
1. The manager will submit the Compa Group for their team member in BambooHR for their manager to review (the team member's indirect manager). See instructions above on how to submit in BambooHR.
1. If the indirect manager agrees, they will approve the request in BambooHR. If the indirect manager does not agree, they should communicate the reasoning why with the manager. Once the manager and indirect manager come to an agreement, the agreed upon Compa Group should be submitted and approved in BambooHR.
1. The Total Rewards team will conduct an analysis of the Compa Groups submitted and review any flags with the People Business Partner and Leader for the applicable group. 
1. Once all concerns have been addressed, the Total Rewards team will communicate to managers that they can have a discussion with their team member about their final Compa Group. The manager can reference BambooHR to see what the final Compa Group for a team member is. 

## Contract factor

Contract Factor distinguishes between employee (1) or contractor (1.17), which can be found on the [`contract_factors.yml` file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/contract_factors.yml). A contractor may bear the costs of their own health insurance, social security taxes and so forth, leading to a 17% higher compensation for the contractor. Visit our [contracts page](/handbook/contracts/) to learn more about the different types of contracts we offer.
