---
layout: handbook-page-toc
title: The Compensation Calculator
description: "On this page, we explain the different factors that make up our Compensation Calculator and its alignment to GitLab's values and Compensation Principles."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Introduction

On this page, we explain the different factors that make up our Compensation Calculator and its alignment to GitLab's values and Compensation Principles.

### Use the calculator

We source some of the information the calculator is based upon, including the San Francisco benchmark and location factors, from 3rd party, non-public sources. As a result, the full compensation calculator application
itself cannot be made completely public.

Instead, consistent with our value of transparency but in line with our agreements regarding how we use data we have sourced, we provide information regarding the type of data we use to build the calculator and how that information helps us build as complete and accurate of a calculator as possible.

Team members can access [the calculator](https://comp-calculator.gitlab.net/users/sign_in)
at any time with their GitLab credentials. Applicants will be given credentials and
will be able access the calculator themselves as well, during the application process.

You can use the calculator to determine the overall Total Rewards Package Offered by GitLab (Cash + Equity + Benefits). Internal team members can also use the [following spreadsheet](https://docs.google.com/spreadsheets/d/1SJnsj-IOTDrAIhTki-oKaJPydiF6vlS1nMKcE88xax8/edit?usp=sharing) by making a copy and adding in your specific information to calculate the GitLab Total Rewards annual amount.

## Contact Total Rewards
For any questions relating to the compensation calculator, reach out to [Total Rewards](/handbook/people-group/#how-to-reach-the-right-member-of-the-people-group).

## The Compensation Calculator

As a natural extension of the [Compensation Principles](/handbook/total-rewards/compensation/#gitlabs-compensation-principles) and our commitment to transparency, sharing, efficiency, directness, and boring solutions (see our [values](/handbook/values/)) we developed a Compensation Calculator.
The compensation of executives and anyone on a quota is not set with the calculator. We use a Compensation Calculator because it helps us align compensation to our values:

1. **Transparency** - The calculator is open to GitLab team members and candidates in the pipeline. This means that at the time of hiring, candidates don’t have to blindly negotiate compensation. They simply need to enter the individual inputs on the Compensation Calculator and it comes up with a band consistent with the individual’s circumstance - where they live, level, currency, etc. When team members move across levels, departments and locations during their time at GitLab, they’ll also be able to see the appropriate band for the change.
1. **Efficient** - There’s no need to have multiple back-and-forth conversations between team members, managers, recruiters and the Total Rewards team. For hiring managers and recruiters, they simply use the Compensation Calculator for the roles they’re hiring for rather than having multiple approval levels and conversations. Similar with promotions and any other changes with locations, benchmarks, levels, team members and managers can discuss compensation according to the inputs on the Compensation Calculator rather than having negotiations.
1. **Diversity, Inclusion & Belonging** - People with the same attributes should earn the same. The Compensation Calculator reduces unconscious bias or giving higher pay to individuals who can negotiate better. The Compensation Calculator allows us to take a data-driven approach to compensation where there's fairness across all teams, levels and countries.
1. **Collaboration** - Allows for team members to review the Compensation Calculator and have the Total Rewards team iterate based on the data and feedback we get from the team.
1. **Iteration** - The Compensation Calculator gets reviewed when feedback is received and all inputs are reviewed during the Annual Compensation Review.
1. **Results** - The Compensation Calculator helps us focus on our outputs rather than spending unnecessary time talking about and negotiating money. It shifts conversations and focus from ‘I want X money’ to looking at the training and mentorship necessary for our team members to increase within the range based on performance.

### Goals of the Compensation Calculator

The goals of the calculator are:

1. Calculate compensation for 200+ regions all over the world.
1. Based on a simple formula.
1. People with the same attributes should earn the same.
1. The adjustment for [paying local rates](/handbook/total-rewards/compensation/#paying-local-rates) should be the same if you are in the same location.
1. You should be able to calculate your compensation in case you know or made an assumption about your level.
1. That it is as close to a [competitive rate](/handbook/total-rewards/compensation/#competitive-rate) as possible given the other constraints.
1. Be able to calculate compensation for most of our offers without involving a compensation specialist.

### The Compensation Calculator Formula

Your compensation = [SF benchmark](#sf-benchmark) x [Location Factor](#location-factor) x [Level Factor](#level-factor) x [Exchange Rate](/handbook/total-rewards/compensation/#exchange-rates)

The calculator will output the amount as `base + variable = total target cash (TTC)`

Your options can be found on [stock options](/handbook/stock-options/) and benefits can be found on relevant [entity specific benefits pages](/handbook/total-rewards/benefits/general-and-entity-benefits/).

The compensation calculator is updated in December and June with the proper exchange rate, keeping compensation levels in line with local purchasing power.

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

`SF benchmark` is the team member compensation at a compa ratio of 1.0 at or above market for the role in San Francisco, which we [determine](#benchmark-evaluation-for-existing-roles) using various sources of survey data: Radford, Comptryx, AdvancedHR. We only use crowd sourced data (Paysa, Payscale, etc) when no survey data is available.

### Benchmark Evaluation

### Benchmark Types

Benchmarks are determined based on the following types: Individual Contributor (IC), Manager, Director, Senior Director. The Total Rewards team will add an entry for each type listed within the job family. For example:

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

Benchmarks are evaluated annually as part of the Annual Compensation Review process. Benchmarks can also be [adjusted](#benchmark-adjustment) as needed throughout the year.

To analyze benchmarks:
1. Use the [job code](#job-codes) as the unique identifier to match all data.
1. Outline whether the role is Base or TTC (Total Target Cash) to pull data accordingly.
1. Add in the Radford and Comptryx Job Code.
1. Generate a formula to look up the proper survey data from both Radford and Comptryx at the 50th and 75th percentile.
1. Propose an updated benchmark taking the maximum of the 50th percentile median or the current benchmark.
1. Evaluate the percent change.
1. Generate a merge request to update the benchmark in the relevant data file and assign to the executive of the group for approval.
1. Evaluate any impact to the current team if this benchmark change is done outside of annual compensation review.

#### New Benchmark

Whenever a new [role](/handbook/hiring/job-families/) is established, a new benchmark must also be determined. The Total Rewards team is pinged on the merge request for a compensation review to start the process. The Total Rewards team should ensure that the request is not for a role that already exists and has a benchmark.

Compensation Benchmarking is the process of using internal job descriptions to match salary survey jobs in order to identify the external survey data for each benchmark positions. Compensation data can fluctuate from very high salary data to very low salary data for roles that have the same or similar job titles. Example would be Field Marketing Manager. A Field Marketing Manager at GitLab or another SaaS or Technology company salary benchmarks would and can be included with Field Marketing Manager for other Non Technology companies, as an example RedBull. Though they have the same "title" the role, scope and salaries for these roles are very different. Based on these variants in comp data we will look at the relevant comp data for each role and use the median for the benchmark.

Each new job family will be assigned a [job code](#job-codes) and evaluated through the same process as [for existing role](#benchmark-evaluation-for-existing-roles).

To review the Compensation Benchmark process please refer to the [New Roles Creation](/handbook/hiring/job-families/#new-job-family-creation-or-additional-levelrole-within-a-current-job-family).

#### Benchmark Adjustment

As stated in [competitive rate](/handbook/total-rewards/compensation/#competitive-rate) we want to recruit and retain people who meet our requirements.
If more than 20% of the people do not accept our offers stating compensation as a reason this is an indication we're not offering a competitive rate.
In this case the Total Rewards team can review the compensation. During this review, we do not look to target at a certain percentile, but instead look at market rates and declined candidate offers when adjusting. A business case should be presented to the compensation group after approval from the Total Rewards team in a google sheet with market data, candidate expectations, an impact to the current team; and in a google doc outlining the problem statement, likely cause, what the department has already tried, and an overall proposal which clarifies the budgetary impact.

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

## Location factor

### Introduction

Location Factor is [calculated](#calculating-location-factors) using multiple data sources to conduct a market analysis of compensation rates globally: Economic Research Institute (ERI), Numbeo, Comptryx, Radford, Robert Half, and Dice. This is _not_ a cost of living analysis, but instead a **cost of market** evaluation compared to San Francisco. The Total Rewards team will use their best judgement in determining the input per location based on our [Compensation Principles](/handbook/total-rewards/compensation/#gitlabs-compensation-principles).

### Geographical Areas

The location factor depends on your [geographical area](#geographical-areas). To determine geographical areas as it relates to compensation, we looked at what the [United Nations](https://unstats.un.org/unsd/methodology/m49/) outlines globally.

To determine your area:

   1. Select the country you live in. This will filter out all areas outside of your country. Then you will select your Province or State (if applicable). Based on the choices under "Metro Area," if you live within a commutable one hour and forty-five minutes of a city listed, you may use that as your location. If you are within a commutable one hour and forty-five minutes of more than one city, the city with the shortest commute would be used as your location. If not, you will select "Not Applicable." If no additional boxes for State/Province and/or Metro Area generate for the country you select, this country has the same location factor regardless of the city you live in. Similarly, if no additional box generates for Metro Area after selecting a State/Province, this State/Province has the same location factor regardless of the city you live in.
   1. If your country is not listed, reach out to total-rewards@domain to gather relevant data.
   1. When you move, you have to inform People Ops and Total Rewards, per the [Relocation process](/handbook/people-group/relocation/) and your compensation may be adjusted up or down. Refer to Total Rewards team or the Compensation Calculator to see what the likely impact will be.

### Calculating Location Factors

GitLab will gather and analyze the data for each location factor annually as part of annual compensation review. We will also iterate on location factors as needed throughout the year.

1. Data Gathering
   * ERI: Review the Cost of Market Analysis of each Geo Area to San Francisco at the 100,000, 125,000, and 150,000 salary rate. Take the average of all three data points.
   * Robert Half: For US and Canada, Robert Half has salary differential information based on each geo area. Normalize this data as a fraction of SF.
   * Dice: Using the Results from the Dice Tech Salary Report, take the differential of the geo area to SF.
   * Comptryx: Pull a report from Comptryx with all job families in SF as well as each location available in Comptryx to evaluate the differential to market.
   * Radford: Pull a report from Radford with all job families in SF as well as each location available in Radford to evaluate the differential to market.
   * In reviewing the data set, determine if a new geo area needs to be added to the list.
1. Data Analysis
   * For geographical areas:
     * Take the average of all non-metro data to determine the location factor for the geographical area. If insufficient non-metro data is available, use all available data and deflate for metros.
   * For metro areas, take the maximum of:
     * the average of all data sources rounded to the nearest 0.01 OR
     * the current location factor or geographic area (so as to not reduce location factors).
     * If the location factor for the metro area is higher than for the geographical area, pull this out as its own location factor.
     * Analyze the output based on geo areas to adjust location factors where needed. Add a comment with the rationale for the adjustment.
   * Reasons why the formula may be adjusted:
        * Not enough number of data points for the output to be statistically relevant
        * Adjusted to align with other metros in geo
   * When analyzing: Focus on where we are having troubles talent acquisition, retaining, or have a smaller population of team members as these can be indicators of a misalignment in the region.

## Level Factor

Level Factor is currently defined as:

* Junior: 0.8 x ic_ttc
* Intermediate: 1.0 x ic_ttc
* Senior: 1.2 x ic_ttc
* Staff/Manager: 1.0 x manager_ttc
* Senior Manager: 1.2 x manager_ttc
* Director: 1.0 x director_ttc
* Senior Director: 1.0 x seniordirector_ttc

The nomenclature can be adjusted for each job family to ensure the appropriate level to select is clear.

### GitLab Job Grades

GitLab job grades aid in mapping a role for internal equity with respect to cash and equity. For example, if there is a stock option update, this mapping can act as a reference to update the compensation calculator for the various roles to ensure alignment. Job Grades can also provide an alternative path to finding the current number of options offered without having to fill out the compensation calculator.

#### Job Grades:

_Note: This table excludes Enterprise Sales, Commercial Sales, Channel Sales, and Sales Development. Grading can be seen in the table below._ 

| Grade	| Management       | Individual Contributor    |
|-------|------------------|---------------------------|
| 15    | CEO              |                           |
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

Dual career tracks can be added to each job family (regardless of division) when supported by data. Each individual contributor level above senior (grade 5) will have links to market examples of that level in the relevant section of the job family.

##### Sales/Sales Development:

| Grade	| Management      | Individual Contributor          |
|-------|-----------------|---------------------------------|
| 15    | CEO             |                                 |
| 14    | EVP/CXO         |                                 |
| 12    | VP              |                                 |
| 11    | Senior Director |	                                |
| 10    |	Director	      |                                 |
| 9.5   |                 |                                 |
| 9	    | Manager (Sales) <br> Senior Manager (Sales)        |         	                      |
| 8	    | Manager (Demand Generation)                |	Enterprise    |
| 7			|                 | Mid Market                      |
| 6			|                 | SMB/SDR Lead & Acceleration                             |
| 5			|                 | Analyst/ SDR  |

##### Customer Success:

| Grade	| Management       | Individual Contributor    |
|-------|------------------|---------------------------|
| 15    | CEO              |                           |
| 14    | EVP/CXO          |                           |
| 12    | VP               | Fellow                    |
| 11    | Senior Director  |	                         |
| 10    |	Director	       | Distinguished             |
| 9	    | Senior Manager <br> Manager   | Principal <br> Staff  |
| 8	    |          |  |
| 7			|                  | Senior	                   |
| 6			|                  | Intermediate              |
| 5			|                  | Junior                    |
| 4			|                  | Intern                    |

## Compa Ratio

Compa Ratio is a term used internally in the Total Rewards team to evaluate [Pay Equality](/handbook/people-group/people-success-performance-indicators/#pay-equality).

The Compa Ratio where within the range spread a team member falls in the calculator. Specifically, the GitLab compensation calculator has a 40% spread (+/- 20% from the median). It is common to see [range spreads up to 50%](https://www.erieri.com/blog/post/common-compensation-terms-formulas).
