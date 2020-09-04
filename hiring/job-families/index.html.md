---
layout: handbook-page-toc
title: "Job Families"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Job Families

Job families are [organized by function in directories in the www-gitlab-com repo](https://gitlab.com/gitlab-com/www-gitlab-com/tree/master/sites/marketing/source/job-families).

### Things to Keep in Mind

1. Before you begin creating a new job family you should check the direcotry to see if there is an existing job family or a role close to the one you are working to create. Job families should incompas a team, a department, or perhaps a division. If you are confused about when you need to create a new job family and when you should add a new role to an existing one watch [this video](https://www.youtube.com/embed/5EcFz1qNj2E).
  * Sometimes you should just add a level or a specialty and not create a new job family.
1. We don't include location requirements for most roles (EMEA, Americas, APEC) in the job family.
1. We don't include [expertises](/company/team/structure/#expert), since these are free form.
1. We don't allow them to read like a [vacancy](/handbook/hiring/vacancies/). The job family could be used for hiring however they are more often serving as the requirements that team members and managers alike use in conversations around career development and performance management. Verbiage you don't want to use includes prases like "you will", or "exciting opportunity" or "we're hiring for".
1. Team Lead vrs people Manager vrs function Manager: you should be aware of how GitLab defines these terms. Depending on the needs of the organization, a Team Lead may or may not directly manage people. There are 2 instances where a Team Lead role can be used:
   * Team Lead as an Individual Contributor - in this context, the Team Lead would be responsible for a specific project/s or area of expertise (a Subject Matter Expert), and may partner with others to accomplish the work. The Team Lead can be leveraged as a player/coach, where they have their owns individual tasks to complete, but they also mentor, train and coach others on the team. A team lead may also handle escalated or complex cases or projects.  
   * Team Lead as a People Manager - in this context, the Team Lead would directly manage a team of people as a first level or entry-level people manager, which means they are directly responsible for hiring, promoting, performance management, or termination of team members. Team Leads can report into Managers, even though they may share the same compensation benchmark. 
   * Manager job families are those responsible for directly managing other GitLab team-members. They hire, promote, and terminate employees, and performance management is one of their key functions. Nomenclature to represent someone is a manager of people can be clarified with "Manager, Benchmark" (e.g., Manager, Marketing) The same holds true for director. 
   * Nomenclature to represent when someone manages a job function, and does not have people management responsibilities, can be clarified with "Benchmark Manager" (e.g., Marketing Manager)

## Format

For each job at GitLab, the job family is the single source of truth for the expectations of that role. A job has the URL ``/job-families/department/title`` and contains the following paragraphs:

- Overview
- **Levels** (i.e. Associate, Intermediate, Senior, Staff, Manager, Director, Senior Director, etc.)
   - Responsibilities (for each level)
   - Requirements (for each level)
- [Job Grades](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades) (for each level)
- Performance Indicators (for each level- may be similar for all ICs)
  Link to one or more performance indicator definitions for which this job family will be the [DRI](/handbook/people-group/directly-responsible-individuals/).
  A performance indicator can be a [KPI](/handbook/ceo/kpis/) but don't need to be, only a sub-set of performance indicators are KPIs.
- [Segment](/sales/field-operations/gtm-resources/#segmentation): A Segment is something you will see with Sales based Job Families (Example, Enterprise, Mid-market, SMB, Public Sector)
- [Specializations](/job-families/specialist) (e.g. CI/CD, distributed systems, Gitaly) relevant to that job family. Note that "specialist" job families may be created if their area of expertise and/or job responsibilities do not fit under any other, more general job families (e.g. the [candidate experience specialist job family](/job-families/people-ops/candidate-experience-specialist/)).
- Career Path: **Moving to and moving from** which describes possible current and future roles which move to the job family and which the job family might move to. Here is [an example](/job-families/product/product-manager/#moving-to-and-moving-from).
- Career Ladder: The next job family. All levels should be on one job family, except when the next job family manages over multiple job families. For [example](/job-families/people-ops/people-operations/#career-ladder).
- Hiring process
- About GitLab
- Compensation

## New Job Family Creation or Additional Level/Role within a Current Job Family

If a hiring manager is creating a new job family within the organization, the hiring manager will need to create the job family.  If this is a job family that already exists (for example, Gitaly Developer would use the Developer position description), update the current position description to stay DRY. If the compensation for the job family is the same as one already in `job_families.yml`, 

Here is a brief [walkthrough](https://docs.google.com/presentation/d/1ZNsMLhk5ZB_NMinV4X2QPWLudnHHWapasxRz5HJCuCQ/edit#slide=id.g551bcad215_0_146) of this process.
If you use these slides please remember that the HANDBOOK is the most up to date and the slides and/or videos may be dated.

1. Create the relevant page in `/job-families/[department]/[name-of-job-family]`, being sure to use only lower case in naming your directory if it doesn't already exist, and add it to the correct department subdirectory.
1. The file type should be `index.html.md`.
1. Add each paragraph to the position description, for an example see the [backend engineer job family](/job-families/engineering/backend-engineer). All job families must have Requirements, Responsibilities, Performance Indicators, [Job Grades](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades), and a Hiring Process. There is a template below that may be useful.
1. **The merge request must follow this approval flow**: 
   * **Your manager**: Your direct manager is responsible for clarifying the scope of responsibilities and level of roles, checking responsibilities and requirements and ensuring the job family follows the template logic and **has all of the required areas**. 
   * **Your executive leader**: Your executive leader is responsible for confirming the role is in plan and review of department/division structure and levels. 
   * **Senior Manager, Recruiting Operations and Insights**: Ping them to approve by at-mentioning them in the #job-family slack channel. They are responsible for checking to ensure it follows template and conventions; they are the final step before the CEO. 
   * **CEO**: After all have approved the MR, ping the CEO to merge by at-mentioning the CEO in the #job-family slack channel. It is preferable to ping the CEO in the same thread as the previous ping.
1. Once the merge request has been merged, the People Ops Analyst will reach out to the People Business Partner who supports the function to understand the job description and job family requirements in determining the appropriate compensation benchmark.
1. Total Rewards Team will propose a [benchmark](/handbook/total-rewards/compensation/compensation-calculator/#new-benchmark) to add to the [job families](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/job_families.yml) file in GitLab and assign it to the leader of group. Once merged, the entry on the `job_families.yml` file will automatically cause the [Compensation Calculator](/handbook/total-rewards/compensation/compensation-calculator) to show at the bottom of the position description page.
7. Total Rewards Team: Once merged, add this benchmark to the backend comp calc and compaas changes sheet.

## Why Job Families Have Performance Indicators

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/9EJkgBRUSDA" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

All job families should have performance indicators.
Those performance indicators should tell you whether or not you’re doing your job well or correctly.
For example, our [Sr. Director, Investor Relations](/job-families/finance/senior-director-of-investor-relations) role  has performance indicators which compare how we’re being described by analysts to how we describe ourself.

Performance indicators are important because people want to know that they’re contributing.
Applicants want to know what success looks like in a role, and team members what to know how they're being measured for success.

Company, functional, or department KPIs are too generic and, thus, not useful as job family performance indicators.
Time sensitive PIs, like OKRs or weekly goals, are also not useful.
Performance indicators should be specific to the role and not dependent on anyone else's performance.
Job Families should have three to five PIs.

## Job Family Creation Using Web Version of GitLab

### Getting to the Right Place
* Go to the [www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com?nav_source=navbar) project on `gitlab.com`
* Select the [source](https://gitlab.com/gitlab-com/www-gitlab-com/tree/master/source) directory
* Go to the [job-families](https://gitlab.com/gitlab-com/www-gitlab-com/tree/master/source/job-families) directory
* Select the department where you will be making the new job family (i.e. Marketing, Sales, etc)

### Creating the New File
* Once you are in the correct department directory, select the `+`
* From the drop down list, select `New file`

### Title the File
* Insert the title in the format of `job-title/index.html.md` for example `marketing-program-manager/index.html.md`

### Body of the File
* Copy the [Template for New Job Family](/handbook/hiring/job-families/#templates-for-new-job-family) and insert it into the body of the file
* Fill in the sections of the template by replacing everything in `{curly brackets}`
* Use [markdown formatting](/handbook/markdown-guide/)
* Delete any unnecessary sections - for example, there may be no `Levels` or `Specialties` at this time, so those sections can be deleted

### Committing Changes
* Update the Commit message with a description of what you are doing
* Update Target Branch to an abbreviation of what you did. Note: include dashes between words instead of spaces.
* Make sure “Start a new merge request with these changes” box is checked.
* Click the Commit changes button at the bottom
* Check: Delete source branch when merge request is accepted.
* Click the Submit merge request button at the bottom

### Failed Pipeline
We have a CI job that checks job families for hard requreiments:
* Requirements
   * every role must have `Ability to use GitLab` as a bullet point.
* Responsibilities
* Performance Indicators
* [Job Grades](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades)
* Hiring Process
* Inclusive Language Check
   * You should use this [online tool](https://inclusiveness-check.herokuapp.com/) to check your job family before running the pipeline.
   * If you're using language that is marked as subtly masculine-coded, fixed-coded or using misused words, the pipeline will fail and you will need to fix it before following the approval flow. Please reference (and add to) [this list](https://docs.google.com/document/d/1YBzbnzKrsTLtAL5L3M5Gt4ZCuCDwPVgwJbeCt62qBIY/edit) for suggested words to use in place of masculine or fixed language. 
   * If the pipeline does fail, the first recommendation is to read the error. It will say what is wrong with the text. For example:
```
1. ["ATTENTION: In /builds/gitlab-com/www-gitlab-com/sites/marketing/source/job-families/marketing/reference-program-manager/index.html.md you're using masculine gender-coded language", "Masculine coded words used: analyst, analytical, decision, driven, leader"]
2. ["ATTENTION: In /builds/gitlab-com/www-gitlab-com/sites/marketing/source/job-families/marketing/production-designer/index.html.md you're using fixed-coded language", "Fixed coded words used: established"]
```
   In this case, there's two job families that failed and each for a different reason. You can do two things now:
      - fix the text to be more inclusive, commit your changes and the pipeline will run again
      - if you disagree or you feel like the pipeline found a false positive, you can add the file to [this list](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/inclusiveness_check.yml). The files in this list are ignored by the inclusiveness check. If you request your job family to be added to the skip level you will need to paste a screen shot of the inclusiveness check in the MR as this will be asked for prior to merging. 

## Templates for New Job Family

There are two templates on this page. The first template is appropriate when the job family has 1 or 2 job titles and more levles (i.e. junior, intermediate, senior, manager, director) or specialities; [for example](/job-families/engineering/backend-engineer/). There can be many levles for each of the titles. The second template is appropriate when there are many different job titles within the same family; [for example](/job-families/people-ops/total-rewards/). 

After pasting this template search for *{add* to quickly navigate to areas of input.

```
---
layout: job_family_page
title: {add text of job family name}
---

{add brief description of the role}

## Responsibilities
* {add a bulleted list}

## Requirements
* Ability to use GitLab
* {add a bulleted list}

## Levels
### {add name of level - i.e. Junior/Senior/Manager}
{add the position this level reports to}

#### {add Level} Job Grade
The {add the role name} is a [grade #](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades).

#### {add Level} Responsibilities
* {add a bulleted list}

#### {add Level} Requirements
* {add a bulleted list}

#### {add Level} Performance Indicators
* {add 3-5 KPIs that this role will be the DRI for}

## Segment
### {add name of Specialty - i.e. Security, Monitor, Create, etc.}
{add a brief description of the specialty}

#### {add Segment} Requirements
* {add a bulleted list}

## Performance Indicators
* {add at least one KPI that this role will be the DRI for}

## Specialties
### {add name of Specialty - i.e. Security, Monitor, Create, etc.}
{add a brief description of the specialty}

#### {add Specialty} Requirements
* {add a bulleted list}

## Performance Indicators
* {add at least one KPI that this role will be the DRI for}

## Career Ladder
{add brief description of the career ladder}

## Hiring Process
Candidates for this position can expect the hiring process to follow the order below. Please keep in mind that candidates can be declined from the position at any stage of the process. To learn more about someone who may be conducting the interview, find their job title on our [team page](/company/team/).
* Qualified candidates will be invited to schedule a 30 minute [screening call](/handbook/hiring/interviewing/#screening-call) with one of our Global Recruiters.
{add a bulleted list of the hiring process steps here}

Additional details about our process can be found on our [hiring page](/handbook/hiring).

```
*Please note the **Compensation** and **About GitLab** sections will auto-populate because of the job family formatting. 

**Second Template**
The second template is appropriate when there are three or more job titles within the same family. For example the team is made up of many different positions, that all report into the same person or are all working to accomplish the same goals. 

After pasting this template search for *{add* to quickly navigate to areas of input.
```
---
layout: job_family_page
title: {add text of job family name}
---

{add brief description of the job family}

## Role
{add brief description of the role here, include what position it reports to}

### Responsibilities
* {add a bulleted list]

### Requirements
* Ability to use GitLab
* {add a bulleted list}

### Job Grade
The {add role name} is a [grade #](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades).

### Performance Indicators
* {add 3-5 KPIs that this role will be the DRI for}

### Career Ladder
{add a brief description of the career ladder here}

### Hiring Process
Candidates for this position can expect the hiring process to follow the order below. Please keep in mind that candidates can be declined from the position at any stage of the process. To learn more about someone who may be conducting the interview, find their job title on our [team page](/company/team/).
* Qualified candidates will be invited to schedule a 30 minute [screening call](/handbook/hiring/interviewing/#screening-call) with one of our Global Recruiters.
{add a bulleted list of the hiring process steps here}

Additional details about our process can be found on our [hiring page](/handbook/hiring).

## Role
{add brief description of the role here, include what position it reports to}

### Responsibilities
* {add a bulleted list}

### Requirements
* Ability to use GitLab
* {add a bulleted list}

### Job Grade
The {add role name} is a [grade #](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades).

### Performance Indicators
* {add at least one KPI that this role will be the DRI for}

### Career Ladder
{add a brief description of the career ladder}

### Hiring Process
Candidates for this position can expect the hiring process to follow the order below. Please keep in mind that candidates can be declined from the position at any stage of the process. To learn more about someone who may be conducting the interview, find their job title on our [team page](/company/team/).
* Qualified candidates will be invited to schedule a 30 minute [screening call](/handbook/hiring/interviewing/#screening-call) with one of our Global Recruiters.
{add a bulleted list of the hiring process steps here}

Additional details about our process can be found on our [hiring page](/handbook/hiring).
```
*Please note the **Compensation** and **About GitLab** sections will auto-populate because of the job family formatting.

## Helpful Tips 
1. Not Repeating More Junior Requirement List for More Senior Levels
   * You may not want to relist an entire requirement set from a more junior level that also pertains to a more senior one. You can choose to keep the section title as {Level} Requirements. You can then add a first bullet that says, "extends the {name of lower job level} responsibilities." 
1. Clarifying Which Levels Specialities Pertain To
   * Specialities may be relevant for some but not all levels. If the same specialty list pertains to multiple roles, list specialties after the most senior role that they pertain to.  In the the specialty list, add a first bullet that says, "relevant for {name of all relevant job levels} responsibilities." 

### Creating a New Job Family from Scratch

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/x3q2KVFwMUY" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
