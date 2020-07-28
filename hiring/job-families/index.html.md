---
layout: handbook-page-toc
title: "Job Families"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Job Families

They are [organized by function in directories in the www-gitlab-com repo](https://gitlab.com/gitlab-com/www-gitlab-com/tree/master/source/job-families).

Confused about when you need to create a new job family and when you should add a new role to an existing one?

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/5EcFz1qNj2E" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

## Format

For each job at GitLab, the job family is the single source of truth for the expectations of that role. A job has the URL ``/job-families/department/title`` and contains the following paragraphs:

- Overview
- **Levels** (i.e. junior, intermediate, senior, staff, manager, director, senior director, etc.)
   - Responsibilities (for each level)
   - Requirements (for each level)
- [Job Grades](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades) (for each level)
- Performance Indicators (for each level- may be similar for all ICs)
  Link to one or more performance indicator definitions for which this job family will be the [DRI](/handbook/people-group/directly-responsible-individuals/).
  A performance indicator can be a [KPI](/handbook/ceo/kpis/) but don't need to be, only a sub-set of performance indicators are KPIs.
- [Specializations](/job-families/specialist) (e.g. CI/CD, distributed systems, Gitaly) relevant to that job family. Note that "specialist" job families may be created if their area of expertise and/or job responsibilities do not fit under any other, more general job families (e.g. the [candidate experience specialist job family](/job-families/people-ops/candidate-experience-specialist/)).
- Career Path: **Moving to and moving from** which describes possible current and future roles which move to the job family and which the job family might move to. Here is [an example](/job-families/product/product-manager/#moving-to-and-moving-from).
- Career Ladder: The next job family. All levels should be on one job family, except when the next job family manages over multiple job families. For [example](/job-families/people-ops/people-operations/#career-ladder).
- Hiring process
- About GitLab
- Compensation

The position description will be used _both_ for the [Vacancy Creation Process](/handbook/hiring/vacancies/#vacancy-creation-process), as well as serving as the requirements that team members and managers alike use in conversations around career development and performance management.

### The job family does not contain

1. Locations (EMEA, Americas, APEC), these are part of the [headline](/handbook/hiring/#headline)
1. [Expertises](/company/team/structure/#expert), since these are free form.
1. Anything that makes it look like a [vacancy](/handbook/hiring/vacancies/) like "exciting opportunity" or "we're hiring for".

## Leads and Managers

If you're working with a team lead or management job family, you should be aware of how GitLab defines these terms. Depending on the needs of the organization, a Team Lead may or may not directly manage people. Team Leads can report into Managers, even though they may share the same compensation benchmark. There are 2 instances where a Team Lead role can be used:

1. Team Lead as an Individual Contributor - in this context, the Team Lead would be responsible for a specific project/s or area of expertise (a Subject Matter Expert), and may partner with others to accomplish the work. The Team Lead can be leveraged as a player/coach, where they have their owns individual tasks to complete, but they also mentor, train and coach others on the team. A team lead may also handle escalated or complex cases or projects.  
2. Team Lead as a People Manager - in this context, the Team Lead would directly manage a team of people as a first level or entry-level people manager, which means they are directly responsible for hiring, promoting, performance management, or termination of team members. 

Manager job families are those responsible for directly managing other GitLab team-members. They *do* hire, promote, and terminate employees, and performance management is one of their key functions. Nomenclature to represent someone is a manager of people can be clarified with "Manager, Benchmark" (e.g., Manager, Marketing) The same holds true for director. Nomenclature to represent when someone manages a job function, and might not have people management responsibilities, can be clarified with "Benchmark Manager" (e.g., Marketing Manager)

## New Job Family Creation or Additional Level/Role within a Current Job Family

If a hiring manager is creating a new job family within the organization, the hiring manager will need to create the job family.  If this is a job family that already exists (for example, Gitaly Developer would use the Developer position description), update the current position description to stay DRY. If the compensation for the job family is the same as one already in `job_families.yml`, you should just update the specialty, do not create a new job family.

Here is a brief [walkthrough](https://docs.google.com/presentation/d/1ZNsMLhk5ZB_NMinV4X2QPWLudnHHWapasxRz5HJCuCQ/edit#slide=id.g551bcad215_0_146) of this process.
If you use these slides please remember that the HANDBOOK is the most up to date and the slides and/or videos may be dated.

1. Create the relevant page in `/job-families/[department]/[name-of-job-family]`, being sure to use only lower case in naming your directory if it doesn't already exist, and add it to the correct department subdirectory.
1. The file type should be `index.html.md`.
1. Add each paragraph to the position description, for an example see the [backend engineer job family](/job-families/engineering/backend-engineer). All job families must have Requirements, Responsibilities, Performance Indicators, [Job Grades](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades), and a Hiring Process. There is a template below that may be useful.
1. The merge request must follow this approval flow: 
   * your manager: Your direct manager is responsible for clarifying the scope of responsibilities and level of roles, checking responsibilities and requirements and ensuring the job family follows the template logic and has all of the required areas. 
  * your executive leader: Your executive leader is responsible for confirming the role that is in plan and review of department/division structure. 
  * Chief of Staff: Ping the CoS to approve by at-mentioning the CoS in the #job-family slack channel. The CoS is responsible for checking to ensure it follows template and conventions; they are the final step before the CEO. 
  * CEO: After all have approved the MR, ping the CEO to merge by at-mentioning the CEO in the #job-family slack channel. 
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
### Things You Will Need
* A written job description
* A job title
* A few minutes to get the job family merge request submitted. Note: job families need to be merged before the role is opened in greenhouse
* Note: [Job families are permanent](/handbook/hiring/#definitions) so do not use words like “we are seeking” in the job description

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
* Copy the [Template for New Job Family](/handbook/hiring/job-families/#template-for-new-job-family) and insert it into the body of the file
* Fill in the sections of the template by replacing everything in `{curly brackets}`
* Use [markdown formatting](/handbook/markdown-guide/)
* Delete any unnecessary sections - for example, there may be no `Levels` or `Specialties` at this time, so those sections can be deleted

### Committing Changes
* Update the Commit message with a description of what you are doing
* Update Target Branch to an abbreviation of what you did. Note: include dashes between words instead of spaces.
* Make sure “Start a new merge request with these changes” box is checked.
* Click the Commit changes button at the bottom

### Assigning and Submitting Merge Request
* Job family updates, not including net new families and levels, must be merged by the Chief of Staff or the CEO. 
* All new job families or new levels to existing job families must be merged by the CEO. The Chief of staff can provide feedback but will not merge. You can also cc any necessary team members in the comments box (i.e. your manager or exec of the group)
* Check: Delete source branch when merge request is accepted.
* Click the Submit merge request button at the bottom

### Inclusive Language Check
* Once the merge request is submitted several pipelines will run. Among them one that specifically test for `Inclusive language` in the job families. If you're using language that is marked as subtly masculine-coded, fixed-coded or using misused words, the pipeline will fail and you'll be asked to fix this. Some examples of masculine and fixed language are below, with neutral and growth alternatives listed. Please reference (and add to) [this list](https://docs.google.com/document/d/1YBzbnzKrsTLtAL5L3M5Gt4ZCuCDwPVgwJbeCt62qBIY/edit) for suggested words to use in place of masculine or fixed language. 

| Masculine-Coded | Neutral Alternatives |
| ------ | ------ |
| Driven | Guided <br> Steered |
| Objective | Goal <br> Target |
| Strong | Robust <br> Substantial |

| Fixed-Coded | Growth Alternative |
| ------ | ------ |
| Brilliant | Highly determined |
| Rockstar| Motivated |
| Super smart | Work hard |

* In case you get that error, the first recommendation is to read the error. It will say what is wrong with the text. For example:

```
1. ["ATTENTION: In /builds/gitlab-com/www-gitlab-com/source/job-families/marketing/reference-program-manager/index.html.md you're using masculine gender-coded language", "Masculine coded words used: analyst, analytical, decision, driven, leader"]
2. ["ATTENTION: In /builds/gitlab-com/www-gitlab-com/source/job-families/marketing/production-designer/index.html.md you're using fixed-coded language", "Fixed coded words used: established"]
```

In this case, there's two job families that failed and each for a different reason. You can do two things now:
- fix the text to be more inclusive, commit your changes and the pipeline will run again
- if you disagree or you feel like the pipeline found a false positive, you can add the file to [this list](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/inclusiveness_check.yml). The files in this list are ignored by the inclusiveness check.

If you want, you can also use this [online tool](https://inclusiveness-check.herokuapp.com/) while working on fixing the problems. 

### Other Reasons for a Failed Pipeline

In October 2019, we added a CI Job that checks that job families have Requirements, Responsibilities, Performance Indicators, [Job Grades](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades), and a Hiring Process, as per the below template.

Under requirements, every role must have `Ability to use GitLab`. This will also fail the pipeline.

### Once the Merge Request is merged
* Once it is merged - it is pushed to master to make the changes and the pipeline will need to run again to make the changes official.
* Once the MR has been merged, you will be able to go into the directory you added to and see your newly created Job Family there. 

## Templates for New Job Family

There are two templates on this page. The first template is appropriate when the job family has 1 or 2 job titles and more specialities; [for example](/job-families/engineering/backend-engineer/). Each of these titles can have multiple levels. The second template is appropriate when there are many different job titles within the same family; [for example](/job-families/people-ops/total-rewards/). 

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

#### {add Level} Job Grade
The {add the role name} is a [grade #](/handbook/total-rewards/compensation/compensation-calculator/#gitlab-job-grades).

#### {add Level} Responsibilities
* {add a bulleted list}

#### {add Level} Requirements
* {add a bulleted list}

#### {add Level} Performance Indicators
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
The second template is appropriate when there are three or more job titles within the same family. 

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
* {add at least one KPI that this role will be the DRI for}

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

### Creating a New Job Family from Scratch

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/x3q2KVFwMUY" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

### Not Repeating More Junior Requirement List for More Senior Levels
You may not want to relist an entire requirement set from a more junior level that also pertains to a more senior one. You can choose to keep the section title as {Level} Requirements. You can then add a first bullet that says, "extends the {name of lower job level} responsibilities." 

### Clarifying Which Levels Specialities Pertain To
Specialities may be relevant for some but not all levels. If the same specialty list pertains to multiple roles, list specialties after the most senior role that they pertain to.  In the the specialty list, add a first bullet that says, "relevant for {name of all relevant job levels} responsibilities." 
