---
layout: handbook-page-toc
title: "Talent Acquisition Process Framework for Creating REQs"
description: "The Talent Acquisition Process Framework for Creating REQs provides guidance on how to open a new requisition for the talent acquisition team."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Requisition Creation Process

Prior to starting the req creation process, a Hiring Manager should follow the steps outlined to create a Job Family or create a MR to edit any relevant Job Family information as needed. For questions specific to Hiring Plans or how to go about making such changes, please refer to the [Finance section of the handbook](/handbook/finance/financial-planning-and-analysis/#headcount-and-the-recruiting-single-source-of-truth). The Hiring manager will then notify their [Recruiter](/handbook/hiring/recruiting-alignment/). The information they should be prepared to share with their Recruiter is as follows:

- Job Title
- Office or Territory
- GitLab Hiring Plan ID (if a role for R&D)
- Job Family URL
- Employment Type (New Hire or Backfill. If a backfill, the name of the teammate and last day of employment)

* **For Evergreen Req Creation Process please visit the end of this page**

For the Product and Engineering backfill or transfer process, see this [handbook page](https://about.gitlab.com/handbook/engineering/#rd-backfill--transfer-process). 

### Adding Openings to the Hiring Plan (DRI: Hiring Manager)

The Hiring Manager carries the responsibility to ensure that openings in Greenhouse align to what’s included in GitLab Hiring Plan. Therefore, the Hiring Manager, Finance, and Talent Acquisition can stay aligned on what’s in plan, so that they can track towards their predetermined hiring targets. If you are looking to add or make changes to the GitLab Hiring Plan, please visit the [Finance section of the handbook](/handbook/finance/).

### Create or Review the Job Family (DRI: Hiring Manager)

Once the req is approved, the Hiring Manager will review the position description in the `/job-families` folder and update it, if needed. If there is no existing job family, follow the steps to [create a new job family](/handbook/hiring/job-families/#job-families). A compensation benchmark for the role should be set by working with the Compensation & Benefits team.

### Opening Vacancies in Greenhouse (DRI: Recruiter)

For positions that are included in the GitLab Hiring Plan, the Recruiter will create approved in-plan requisitions.

**The Recruiter will:**

1. [Log in](/handbook/hiring/greenhouse/#how-to-join-greenhouse) to [Greenhouse](https://gitlab.greenhouse.io/users/sign_in) and hover over the plus sign in the top right corner of their dashboard, and then click [Create a Job](https://app2.greenhouse.io/plans/new).
1. Click on [Start from a copy of an existing job](https://gitlab.greenhouse.io/get_started/show_existing_jobs). From there, select `Any Status` at the top bar, select `Draft`, and choose the template for the division. Please note that when creating a requisition, the `Start from Scratch` option should **not** be used, as important elements needed will **not** be included.
1. Once you've selected a template to copy, the first screen will ask for **Basic Job Info**.
1. The `Internal Job Name` is only viewable within Greenhouse, and the `External Job Name` is what appears on the jobs page. Enter in the requisition's title in these fields, including _Specialty_, if applicable. These two fields should almost always be the same, but if you have questions, please reach out to the Compensation & Benefits Team.
    - If only internal candidates will be considered for the role, job title should read "CURRENT TEAM MEMBERS ONLY - Job Name"
1. `Department` is the department this role will fall under. Always choose a department and **not** a division (e.g. for a Security Engineer opening, choose **Security** within the `Engineering` division, and do **not** choose `Engineering`). If you are unsure of what department to choose, reach out to the Compensation & Benefits team.
1. If a requisition can be located anywhere GitLab hires, check `Anywhere` next to `Office`. If an opening is dedicated to a certain region or time zone, uncheck the `Anywhere` box and select any of the predetermined regions or time zones. If a region or time zone is not shown in the list, please reach out to the [Recruiting Ops Team](https://gitlab.com/gl-talent-acquisition/operations/-/issues/new). In addition to the region or time zone you've selected, it's recommended to also choose `Remote` so that it's clear to applicants that the opening is both located in a particular area but also still remote.
1. Click `Generate IDs` to create a requisition ID
1. Under `Employment Type`, select if your opening is a _Full-Time_, _Part-Time_, _Intern_, or _Contract_ role. We strongly advise offering both full-time and part-time options for most requisitions. Please note that _Contract_ refers to a true consultant, who works on short-term projects. This is seldom used.
1. `Salary` will be input by the Total Rewards Team. The salary can be found in the [Compensation Calculator](/handbook/total-rewards/compensation/compensation-calculator/calculator/), which is available to all team members and advanced candidates.
    - Take the `benchmark x level x 0.45` for the low end and `benchmark x level x 0.8` on the high end.
    - For roles not in the compensation calculator: Leave blank if not known. The Total Rewards team will edit as the first level of approval. The Total Rewards will pull survey data in San Francisco for this role then apply the same formula for `0.45` on the low end and `0.8` on the high end.
1. `Colorado Salary` will be input by the Total Rewards Team if the role accepts US applicants, unless the role is state-specific outside of Colorado (eg. a sales role that will only hire in Florida and Georgia). Recruiters can use `0-1` as the range as a placeholder when submitting the req for approval. 
1. Scroll down to the `Openings Secton`
1. Click `Generate Opening IDs` to create an opening ID
1. Enter the `Target Start Date` as listed on the GitLab Hiring Plan
1. Enter the `Hiring Manager`
1. Under `Type` choose if this is a _New Hire_ or a _Backfill_. If you select _Backfill_, please enter the name of the teammate you are backfilling on the line below.
1. Enter the `GHP ID` listed on the GitLab Hiring Plan
1. For roles that accept US applicants, at the bottom of your job post, manually edit and enter the range for the listed role and level for the entire Colorado location, listed as `$XX,X00 - $XXX,X00` in the template paragraph listed below. To find this range, go to the `Colorado Range` field in the Offer Details, and paste it into the template section. You do not need to do this step if you will only be advertising your req in specific states (eg. a sales role that is only for Florida and Georgia).

>Template: For Colorado residents: The base salary range for this role’s listed level is currently $XX,X00 - $XXX,X00 for Colorado residents only. Grade level and salary ranges are determined through interviews and a review of education, experience, knowledge, skills, abilities of the applicant, equity with other team members, and alignment with market data. See more information on our [benefits](https://bit.ly/GLBeneUS) and [equity](https://bit.ly/GLequity). Sales roles are also eligible for incentive pay targeted at up to 100% of the offered base salary. Disclosure as required by the Colorado Equal Pay for >Equal Work Act, C.R.S. § 8-5-101 et seq.

1. Click `Create Job & Continue`.
1. The next page consists of all of the **attributes** interviewers will be evaluating for candidates in their scorecards across the full interview process. These may not be known until after the Kick-off Session and may be skipped during the initial setup of the REQ. The Recruiter will pdate the scorecard after the kick-off Session.
1. Click `This looks good, NEXT` at the right of your screen.
1. The `Interview Plan`, is where you'll craft the hiring process and scorecards for each step in the process. The interview plan may not be known until after the Kick-off Session and may be skipped during the initial setup of the REQ. The Recruiter will update the interview plan after the Kick-off Session.
1. Click `This looks good, NEXT` at the right.
1. The `Hiring Team` is where you select who will be working on this opening and what access they should have.
    - Scroll to the `Who's responsible for this job?` to assign the Hiring Managers, [Recruiter(s)](/handbook/hiring/recruiting-alignment/), Coordinator(s) and Sourcer(s). Everyone who will be involved in interviewing may not be known until after the Kick-off Session. The Recruiter will update the Hiring Team after the Kick-off Session.
1. Click `This looks good, NEXT` at the right.
1. Approvals section is where you can add any notes here for the opening where it says `Leave a note`.
    - If you were unable to determine the compensation information tag the Compensation and Benefits team in the Approval Notes section with an @ mention.
    - @ mention the Hiring Manager, Recruiter, Sourcer, Sourcing Manager, and People Business Partner (PBP) so they know the REQ has been submiotted for approval.
1. Click `This looks good, NEXT` at the right.
1. Set up Notifications where appropriate. You should make sure that you are always notified for internal candidates and referrals, but the rest is up to your preferences.
1. Scroll to the bottom of the page and click `Request Approval`.
1. You'll be redirected to the opening in Greenhouse, where you can review the opening, make any changes, or make any updates.

#### Kick-Off Issue


1. The recruiter will open up a [kick-off issue](https://gitlab.com/gl-talent-acquisition/req-intake/-/issues/new).

### Kick-off & Finalize Greenhouse Setup (DRI: Recruiter)

**The Recruiter will:**

#### Complete the Kick-Off

1. Schedule a [Kick-off Session](/handbook/hiring/talent-acquisition-framework/req-overview/#step-3-complete-kick-off-session-agree-on-priority-level--complete-a-sourcing-session) or complete a-sync with the Hiring Team.
1. Prepare the job to be posted on the [Careers Page](/jobs/).

#### Post the job internally

1. Create or update the `Job Post` under `Job Setup`, which will hold the opening description. Next to the name of the opening, click the pencil icon to edit the job post.
To view the full job description, view our handbook (insert job family url). The compensation calculator can be found through [this url](/handbook/total-rewards/compensation/compensation-calculator/calculator/).
Additional details about our process can be found on our [hiring page](/handbook/hiring/interviewing/).
    - `Job Name` - if only internal candidates will be considered for the role, job title should read "CURRENT TEAM MEMBERS ONLY - Job Name"
    - `Post To` should always be `Internal`.
    - `Location` is automatically set to `Remote`. If there is additional location information you'd like to add that should be included in the Job Name.
    - `Application Language` should always be `English`.
    - `Description` should be the copy/pasted from the job family on GitLab.com with the relevant information for the level/specialty/etc.
    - Be sure to add the Compensation section as a header and hyperlink the `view our handbook` to the correct job family link:
    Compensation
1. If there are any links in the description, click on the link, then click the link icon in the text box toolbar, then change `Target` to `New Window`, then click `Ok` and repeat for any other links in the description; this will ensure all links work properly.
1. For the Custom Application Questions, ensure the following questions are included:
    - LinkedIn Profile
    - Please let us know if there are any adjustments we can make to assist you during the hiring and interview process.
1. Settings
    - Send Confirmation Email to Candidates: select the `Internal Auto-Reply after Application` from the drop-down list
    - Application Confirmation Page: Default
    - Uncheck `Include Custom Demographic Questions`
    - Uncheck `Include EEOC Questions`
    - Uncheck `Include 'Apply with SEEK' button`
1. Click `Save`.
1. If there is an _External Job Post_, please **delete** it by clicking the ellipsis (`•••`), then `Delete`.
1. Click the red button to publish the opening to our internal job board.
1. After publishing, announce on Slack in `#new-vacancies` for team members to apply or send in referrals. 

```
Slack message template:

New Job Alert: TITLE
Apply internally: LINK
Review how to make a referral: /handbook/hiring/referral-process/
```

#### Using job posting rules in Greenhouse

Setting up job posting rules when publishing a new job can save time later on by automatically removing candidates that are applying from countries in which we cannot hire them.

There are two fields that we can consider using job post rules to help manage applications: candidate location and candidate visa sponsorship needs.
The recommendation is to implement a rule on job postings that automatically rejects candidates who are applying from countries where we cannot actively hire.
To do this, the following steps should be taken:

1. In the custom application questions section of the job setup, add the question "Please choose the country in which you are located" and select the option to make this a required question.
1. Navigate to the "Manage Rules" link in the "Job Posts" section of the job setup and choose to "Add a rule".
1. Design a rule so that when a candidate selects a country that we cannot hire them in then they are auto-rejected.
1. Choose "Country Hiring Restriction" as the rejection reason and choose to "send email" using the "Reject because we cannot hire in this country" template to be sent to the candidate.

Similarly, you can set up a custom rule to reject candidates based on visa requirements following the process above and applying rules to the question "Will you now or in the future require sponsorship for a visa to remain in your current location? (Please be aware that GitLab does not offer any form of Work Sponsorship.)"

If you are applying rules to reject candidates based on visa sponsorship needs it's important to consider whether there's a possibility that we may reject candidates with complex situations that we actually can hire. If there is any doubt, avoid using rules to reject candidates automatically based on visa sponsorship requirements.


#### Update the Scorecard

1. Update the `Scorecard` after the kick-off Session. The attributes are typically split up into various categories, such `Requirements` (copied from the job family), `Responsibilities` (copied from the job family), `Skills`, `Traits`, and `Values` (standard across all roles, see additional info in the next step).
    - These can be adjusted as needed, but **every** attribute listed should be a must-have and not a nice-to-have.
    - If you want to include nice-to-haves in the scorecard, please create a new category called `Nice-to-haves` and add any applicable attributes there, making sure that your entire interview team knows that if a candidate does not meet any of those attributes it is not a negative against them.
1. To create a new category, scroll to the bottom of the screen and select `Add a Category`, and add the name of the category. In the category you can add additional attributes.
1. To remove a category, hover over the category, and click, `Delete Category`.
1. The only required category is `Values`, which should never be deleted. The values are listed in such a way to match how the values listed on our contracts.
    - Collaboration: Helping others, even when it is not immediately related to the goals that I am trying to achieve. Similarly, I will rely on others for help and advice.
    - Results: Doing what I promise for my fellow team members, our customers, our users, and our investors.
    - Efficiency: Caring about working on the right things, not doing more than needed, and not duplicating work. Dogfooding: Willingness to work with git and GitLab, using GitLab workflows within the team. (this attribute falls under the efficiency value and is called out separately, not as an additional value, but as an important key to success)
    - Diversity, Inclusion, and Belonging: Fostering an environment where everyone can thrive and feel included.
    - Iteration: Doing the smallest thing possible and get it out as quickly as possible.
    - Transparency: Being as open about as many things as possible.
1. Add Custom Questions to all interviews in the Team Interview Stage. Every interviewer must have a place to include "Pros" and "Cons". [How to add custom questions.](https://support.greenhouse.io/hc/en-us/articles/115002276366-Create-Custom-Questions-for-Interview-Kits)
1. To edit the attributes within a category, click `Edit` next to the category. You can then change the name of attributes, delete attributes, add brand new ones, or choose existing attributes from other vacancies. Keeping the attribute names the same and choosing existing attributes from other vacancies is recommended so that the attribute choices remain streamlined. However, if you have a particular attribute for this role that needs to be evaluated, don't hesitate to add it.
1. Click `Save` once you've configured your attributes and categories. If you don't want to save your changes after you've clicked `Edit` under a category, click `Cancel`.

#### Update the Interview Plan

1. Update the `Interview Plan` after the Kick-off Session.
1. Every opening should have an `Get to Know Us` stage. This is also known as Application Review by the Greenhouse Milestone.
1. Some vacancies have an `Assessment` as the second stage in the process.
    - If your opening requires an assessment but there is no assessment stage already added, scroll to the bottom of the page and click `Add a Stage`.
    - From there, you can either click `Copy from another job?` at the bottom of the pop-up and select an opening you know has an assessment. Click on `Assessment`, then `Add`.
    - If you're not sure of another opening that has an assessment, you can scroll to the bottom of the pre-populated list and select `Take Home Test`, then `Add`.
    - Once added, hover over the new stage and click the pencil next to the stage name and change the text from `Take Home Test` to `Assessment`. Then hover over the second `Take Home Test` on the right of the stage and change the text again.
    - The assessment stage **must** be added using one of the two methods above, or it will not work properly. If you have any questions about this, please reach out to the talent acquisition operations team.
    - Once your assessment stage is created, or if it is already included, click `Edit` in the stage. You'll then want to select any attributes you want the grader of the assessment to focus on. This will typically be more technical in nature, but select whatever seems appropriate.
    - Scroll down to `Email to Candidate`. This is where you'll include the actual assessment questions. The "From" should be `{{MY_EMAIL_ADDRESS}}` and "Subject" `GitLab Application - {{CANDIDATE_NAME}} - {{JOB_NAME}} Questionnaire`. In the Body, craft an email and insert your assessment questions. Below the body, make sure that the `link for candidates to submit tests` is **ON**. You can also add any attachments below that field if necessary.
    - Scroll down to `Grading Instructions` and include any specific items you want your graders to look out for when they review the candidates' answers. You can copy this section over from another job if applicable.
    - Under `Custom Questions`, be sure that there is either a `Full Notes` custom question or that you add one. To add it, simply click `Add Custom Question`, title it `Full Notes`, choose `Text` as the answer type, and click `Add Custom Question`. If there are any other specific questions you want your graders to answer when reviewing the assessment, feel free to add them here. They can be required or not, depending on your preference.
    - Under `Graders and Notifications`, search for members of your team who can grade the assessments. You can select multiple people at this point, and when the assessments are actually sent out to candidates, each grader will appear and the person sending the assessment can delete extras so it is only sent to one person. You can also select who you want to be notified when the test is received; the test graders should absolutely be selected, and it's recommended for the recruiter to be notified as well. You can select any additional people to be notified as well if desired.
    - Finally, under `Additional Settings`, check `This interview requires scorecards to be submitted` and leave **unchecked** `Hide candidate name and details from grader`.
    - Then click `Save`.
1. The next stage is the `Screening` call stage, which should be standard across the organization. Click `Edit` on this stage, scroll to the bottom, and choose the recruiter as the default interviewer and set interview duration to 30 minutes. It is important for this stage to be named the same across the organization for reporting purposes.
1. The next stage is `Team Interview`, where the candidates will meet with peers and the hiring manager. Under this stage, you should see multiple interviews. They are typically called 1 - Hiring Manager, title (name), 2 - Peer Interview, title (name), 2 - Peer Interview, title (name), etc. You can also add additional interviews such as 3 - Director Interview, title (name), 4 - Demo with Panel, titles (names), or other names that work for your interview plan.
    - The `Team Interview` stage should be laid out according to steps, indicated by the 1, 2, 3, etc. There can be more than 1 interview in a step to help speed up the interview process and reduce our apply to accept KPI.
    - The interview plan should be defined during the intake call to include what attributes from the scorecard each interviewer is addressing as well as standard questions each interview should ask.
    - The interview plan should be duplicated in the [hiring process repo](https://gitlab.com/gitlab-com/people-ops/hiring-processes).
    - The interview plan should also be defined on the job family page under the Hiring Process section.
1. For each interview, click `Edit`.
    - Select the appropriate attributes to focus on in that interview.
    - To the right of `Interview Prep`, choose how long the interview should take (e.g. 30 minutes, 45 minutes, 50 minutes, etc.).
    - Include the purpose of the call and questions the interviewer should ask. You can copy this over from another opening if applicable.
    - Under `Custom Questions`, be sure that there is a `Full Notes` custom question in addition to the interview specific questions.
    - To add additional questions, click `Add Custom Question`, title it `Full Notes`, choose `Text` as the answer type, and click `Add Custom Question`.
    - Choose default interviewers. If you have multiple team members that can interview, feel free to input all of their names, and the CES will choose one interviewer when scheduling the interview. This gives visibility to everyone who is trained and ready to perform interviews for this opening.
    - The two `Additional Settings` should both be checked.
    - Click `Save`.
1. Some teams prefer to have the hiring manager stage broken out separate from `Team Interview` stage and in that case, a stage labeled `Hiring Manager Interview` should be added. To add a new interview in a stage, hover over the stage and click `Add Interview`, then you can copy over an interview from another job or create a new one. You can also move the interviews around within the stage and change the interview names. `Executive Interview` are included in this stage. Depending on the level of the role the executive interviews may be conducted at the end or at any point in the team interview stage. You can customize as needed, including selecting attributes, adding custom questions, setting the interview length and selecting a default interviewer.
1. The next stage is `Background Check & References`, with at least three sections; a former manager and two former peers. These can be customized as needed. For executive-level roles, it is suggested you include the following; two former managers, two former peers, two former direct reports, and back-channel. The [background check](/handbook/people-policies/#background-checks) is performed during this stage.
1. There is an optional `Justification` section used by the R&D division. This section should include three questions:
    - In what specific way(s) does this candidate make the team better?
    - What flags were raised during the interview process?
    - How do we intend on setting this candidate for success?
1. The last stage is the `Offer` stage and cannot be edited or removed. Some important notes about the interview plan:
    - Every interview should be evaluating values add in the attributes section.
    - On occasion, there may be additional or fewer stages than represented here, but these stages should be consistent as much as possible in order to maintain data integrity for reporting. The interviews within the stages can be adjusted as needed.
    - If a candidate will have more interviews in a stage than predetermined, you can add additional interview events as long as the candidate is in the stage where you need to add the additional event.

#### Update the Hiring Team

1. Update the `Hiring Team` after the Kick-off Session.
1. The Hiring Team is where you select who will be working on this opening and what access they should have.
    - Scroll to the `Who's responsible for this job?` to assign the Hiring Managers, [Recruiter(s)](/handbook/hiring/recruiting-alignment/), Coordinator(s) and Sourcer(s).
    - Scroll to the `Who can see this job?` section to set permissions to the team members who will need access. Search for someone's name click the pencil and select the correct access level from the drop-down.
    - Search for every person who will be in the hiring process, whether they will be grading assessment, reviewing new applications. Interviewers who have no additional responsibilities do not need additional access in order to see their interview kit and scorecard.
    - You may need to go back to the interview plan to add the interviews if it did not let you add them before completing this step.

#### Update Notifications

1. Review notifications and ensure they align to the preferences of you and the hiring team. You can additionally set up notifications via Slack integration by clicking your name in the top right corner and selecting the Slack integration.

### Publish the Job to the Careers Page & Review Greenhouse Configuration

Once a job has been setup in Greenhouse and posted to the GitLab public job board it will be automatically posted to the [Careers Page](/jobs/).

### Choosing the correct location for your published job

The location field in Greenhouse will dictate where a particular job ends up being listed geographically. 

There are set locations options in Greenhouse to make this possible. Recruiters can choose from one of the following locations and that will ensure the job shows up on LinkedIn in the countries highlighted below

| Location selection in Greenhouse | Countries where the associated job will post on LinkedIn |
| -------------------------------- | -------------------------------------------------------- |
| Remote | United States, Canada, United Kingdom, Netherlands, Ireland, Australia |
| Remote, Global | United States, Canada, United Kingdom, Netherlands, India, Australia, Ireland |
| Remote, Americas | United States, Canada, Mexico, Chile, Costa Rica |
| Remote, EMEA | United Kingdom, Netherlands, Germany, France, Ireland, South Africa, Belgium |
| Remote, APAC | Australia, New Zealand, South Korea, Singapore, Japan, India, Phillipines |
| Remote, US | United States |
| Remote, North America | United States, Canada |
| Remote, France | France |
| Remote, Japan | Japan |
| Remote, Germany | Germany |
| Remote, United Kingdom | United Kingdom |
| Remote, Australia | Australia |
| Remote, Europe-North/Central | Austria, Finland, Hungary, Latvia |

If you have a job that needs to show up in a different subset of countries, you can choose the most appropriate location tag and manually adjust the countries where that job shows up by following the instructions under the "Publishing jobs to LinkedIn" section.

### Adding additional job posting rules for LinkedIn postings

If you need additional rules set for a job post or set of posts on LinkedIn you can assign your own rules by [following these steps](https://www.linkedin.com/help/recruiter/answer/a413382).


### Publishing jobs to LinkedIn

All jobs created in Greenhouse are setup to be automatically posted to LinkedIn using their job wrapping feature.

As mentioned in the "Choosing the correct location for your published job" section, the location field in Greenhouse dictates where a particular job ends up being published.

Common issues that may need to be addressed for a job to correctly publish on LinkedIn:

- If the option to `Publish to Free Job Boards` within Greenhouse is selected, this information will override the location information. You should unselect the option `Publish to Free Job Boards`.

Prior to 2022 we used a more complex system to post jobs to various locations. If your job is showing up in places it should not, you may need to remove existing code from the source code in Greenhouse. To do this, follow these steps:

- Click on the < > on the menu bar in the description text box to open the source code
- Scroll to the bottom of the pop-up
- Remove the following HTML if it is present in the source code `<div><span style="font-size: xx-small;"><span style="color: white">Remote-XXX</span></span></div>` anywhere in the job ad
- Click "Ok", then "Save"

### Taking ownership of your LinkedIn job posts as a GitLab recruiter

With some recent changes to the way greenhouse connects with LinkedIn, we're now able to give each of our recruiters access to edit their job posts on LinkedIn as needed. If you need to change the country or countries that a particular job shows up in or correct something about the listing you can do that by following these steps:

1. Each recruiter has a custom job wrapping tag assigned to them. This is typically a hashtag consisting of #LI- followed by FirstNameInitial, then LastNameIntial, and a number. You can look up your hashtag by logging into LinkedIn Recruiter and [following these instructions](https://www.linkedin.com/help/recruiter/answer/a412402).
    1. Each GitLab recruiter has 50 job slots assigned to them in LinkedIn. Jobs will randomly be assigned to those job slots until all 50 slots are utilized by tagged jobs.
1. Once you've identified your job tagging hashtag you simply add this to the bottom of the job setup in greenhouse.
1. With the custom recruiter hashtag added to the bottom of the job setup in greenhouse, these roles will then be assigned to correct recruiter on LinkedIn.
1. You can then view all of your published roles and make changes on LinkedIn by visiting the [All Jobs page](https://www.linkedin.com/talent/jobs/jobs-list?jobStatuses=%5B%22LISTED%22%5D). Please note you must have an active LinkedIn Recruiter license with GitLab to access that page.
1. To make changes to your jobs on LinkedIn, you can click the "edit job" button.

If you run into problems, you can reach out to the #talent-brand channel for support.

### How jobs are categorized on our careers site job board

Greenhouse data is fed into our custom jobs page located at [about.gitlab.com/jobs/all-jobs](about.gitlab.com/jobs/all-jobs).

Each department in Greenhouse has a specific department ID associated with it. Those department ID's can be found in our [Greenhouse API feed](https://boards-api.greenhouse.io/v1/boards/gitlab/departments).

Specific departments are coded to show up in various categories, this is defined in the openings.js file that can be found in the folder source / javascripts / openings.js.

When new departments are created, we will need to add those to the openings.js file so that they appear correctly on our job board.

If new categories are needed on the [about.gitlab.com/jobs/all-jobs](about.gitlab.com/jobs/all-jobs) job board we also need to update that index file.


### Publishing jobs to Indeed and Glassdoor

Our jobs are now set up to automatically go to Indeed and Glassdoor and be posted as remote roles on both sites.

Recruiters should unselect or leave unselected the option in Greenhouse to "publish to free job boards" as this requires us to input city, state, and country data that overrides the remote job listing. There is an automation in place to automatically send jobs to Indeed and Glassdoor.



### Publishing Vacancies on External Job Boards

Sometimes we need to post vacancies on specialist job boards to attract talent. The budget for this will come from the Department with the open Req, and department leaders will need to approve the neccessary budget.   

## Evergreen Requisitions 

An Evergreen Requisition is a requisition used to pipeline candidates on a continual basis. This is done by keeping the Evergreen req posted for internal, external and passive candidates. It is important that no candidate is hired to an Evergreen req, and instead is moved to an approved headcount req (as mentioned below).

When should an Evergreen req be used?

* When there are multiple openings of the same role and hiring needs to be completed in a volume basis (for example, Sales Development Representative)
* When there are multiple openings of roles that have very similar technical qualifications  that are expected to be hired on a regular basis (for example, intermediate backend engineer). These roles can sometimes span multiple teams (for example, Ops, Growth and Fulfillment)

How do you request an Evergreen req?

* Contact the [Recruiting Manager](/handbook/hiring/recruiting-alignment/#talent-acquisition-leader-alignment) aligned with your function to discuss whether it’s appropriate to open an Evergreen req for your needs.

### Creating an Evergreen Requisition

* Follow the Req Creation process found here. In addition, please be aware of these added steps:
   * Start the Req title with “Evergreen” followed by the name of the req (example Evergreen - Sales Development Representative)
   * Select “Evergreen” when selecting opening Type

### Hiring a Candidate from an Evergreen Requisition 

* It is important that before a candidate can be hired, there must be a separate, team-specific req that is tied to the approved headcount and lists the appropriate GHP ID required to hire a candidate. This approved, team-specific headcount req is not posted for applications.
* Once a candidate is identified in the Evergreen req and you have an approved, team-specific headcount req to move the candidate to, proceed with the following steps:
   * Once interviews are completed, BEFORE you move the candidate to the offer stage, click “Add, transfer, or remove candidates jobs.” 
(NOTE: It is important that all interviews and scorecards are completed before you take any action to move a candidate from an Evergreen req. Interviews and open scorecards will not transfer once the candidate is moved.)
   * Select “Transfer to a Different Job”
(NOTE: Please be sure to select “Transfer” as opposed to “Add”)
   * Once a candidate is Transferred to the approved headcount req, you can move to offer in that req.

### Sourcing Candidates for an Evergreen Req

* When sourcing passive candidates for an Evergreen Req, it is important that you add the prospect to the Evergreen req, as opposed to the approved, team-specific headcount req associated with the Evergreen req. Adding prospects to the Evergreen req will ensure that the prospect follows the appropriate interview process and that the appropriate data will be captured.
