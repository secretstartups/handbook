---
layout: handbook-page-toc
title: "Recruiting Process Framework for Creating REQs"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


## Requisition Creation Process

Prior to starting the req creation process, a Hiring Manager should follow the steps outlined to create a Job Family or create a MR to edit any relevant Job Family information as needed.  For questions specific to Hiring Plans or how to go about making such changes, please refer to the [Finance section of the handbook]((/handbook/finance/financial-planning-and-analysis/#headcount-and-the-recruiting-single-source-of-truth)). The Hiring manager will then notify the Recruiting Manager or Lead for their organization. The information they should be prepared to share with the [Recruiting Manager/ Lead](/handbook/hiring/recruiting-alignment/) is as follows: 
* Job Title
* Office or Territory
* GitLab Hiring Plan ID
* Job Family URL
* Employment Type (New Hire or Backfill. If a backfill, the name of the teammate and last day of employment)

### Adding Vacancies to the Hiring Plan

The Hiring Manager carries the responsibility to ensure that vacancies in Greenhouse align to what’s included in GitLab Hiring Plan. Therefore, the Hiring Manager, Finance, and Recruiting can stay aligned on what’s in plan, so that they can track towards their predetermined hiring targets. If you are looking to add or make changes to the GitLab Hiring Plan, please visit the [Finance section of the handbook](/handbook/finance/).

### Create or Review the Job Family

Once the vacancy is approved, the Hiring Manager will review the position description in the `/job-families` folder and update it, if needed, by making a merge request and assigning it to the Executive to review and merge. If there is no existing job family, follow the steps to [create a new job family](/handbook/hiring/job-families/#new-job-family-creation-or-additional-levelrole-within-a-current-job-family), then continue. Please note that new job families require approval from the CEO. The Recruiting Manager will use the relevant elements from this job family to open the vacancy in Greenhouse. The job family should include:

  - Responsibilities
  - Specialties (e.g. Gitaly, Backend)
  - Levels (e.g. intern, junior, senior, staff, manager)
  - Location (e.g. Anywhere, EMEA, Americas)
  - Requirements
  - Hiring Process, also update the internal [hiring process repo](https://gitlab.com/gitlab-com/people-ops/hiring-processes)

A compensation benchmark for the role should be set by working with the Compensation & Benefits team.

### Opening Vacancies in Greenhouse

For positions that are included in the GitLab Hiring Plan, the Recruiting Manager will create approved in-plan requisitions.

1. The Recruiting Manager will [log in](/handbook/hiring/greenhouse/#how-to-join-greenhouse) to [Greenhouse](https://gitlab.greenhouse.io/users/sign_in) and hover over the plus sign in the top right corner of their dashboard, and then click [Create a Job](https://app2.greenhouse.io/plans/new).

1. Click on [Start from a copy of an existing job](https://gitlab.greenhouse.io/get_started/show_existing_jobs). From there, you can choose to clone a vacancy, which is ideal if you are opening a vacancy that has been opened before, or something very similar has been opened before. If there is no close match, select `Any Status` at the top bar, select `Draft`, and choose the template for the division. Please note that when creating a requisition, the `Start from Scratch` option should **not** be used, as important elements needed will **not** be included.

1. Once you've selected a requisition to copy, the first screen will ask for **Basic Job Info**.

1. The `Internal Job Name` is only viewable within Greenhouse, and the `External Job Name` is what appears on the jobs page. Enter in the requisition's title in these fields, including *Specialty*, if applicable. These two fields should almost always be the same, but if you have questions, please reach out to the Compensation & Benefits Team.

1. `Department` is the department this role will fall under. Always choose a department and **not** a division (e.g. for a Security Engineer vacancy, choose **Security** within the `Engineering` division, and do **not** choose `Engineering`). If you are unsure of what department to choose, reach out to the Compensation & Benefits team.

1. If a requisition can be located anywhere GitLab hires, check `Anywhere` next to `Office`. If a vacancy is dedicated to a certain region or time zone, uncheck the `Anywhere` box and select any of the predetermined regions or time zones. If a region or time zone is not shown in the list, please reach out to the [Recruiting Ops Team](https://gitlab.com/gl-recruiting/operations/-/issues/new). In addition to the region or time zone you've selected, it's recommended to also choose `Remote` so that it's clear to applicants that the vacancy is both located in a particular area but also still remote.

1. Click `Generate IDs` to create a requisition ID 

1. Under `Employment Type`, select if your vacancy is a *Full-Time*, *Part-Time*, *Intern*, or *Contract* role. We strongly advise offering both full-time and part-time options for most requisitions. Please note that *Contract* refers to a true consultant, who works on short-term projects. This is seldom used.

1. `Salary` will be input by the Total Rewards Team. The salary can be found on the job family page for roles where the compensation calculator is public.
   - Take the `benchmark x level x 0.25` for the low end and `benchmark x level x 0.8` on the high end.
   - For roles not in the compensation calculator (Sales/Director/Exec): Leave blank if not known. The Compensation & Benefits Team will edit as the first level of approval. The Compensation & Benefits Manager Team will pull survey data in San Francisco for this role then apply the same formula for `0.25` on the low end and `0.8` on the high end.

1. Scroll down to the `Openings Secton`

1. Click `Generate Opening IDs` to create an opening ID 

1. Enter the `Target Start Date` as listed on the GitLab Hiring Plan

1. Enter the `Hiring Manager`

1. Under `Type` choose if this is a *New Hire* or a *Backfill*. If you select *Backfill*, please enter the name of the teammate you are backfilling on the line below.

1. Enter the `GHP ID` listed on the GitLab Hiring Plan

1. Click `Create Job & Continue`.

1. The next page consists of all of the **attributes** interviewers will be evaluating for candidates in their scorecards across the full interview process. These may not be known until after the Kick-off Session and may be skipped during the initial setup of the REQ.  The CES will update the scorecard after the Kick-off Session. The attributes are typically split up into various categories, such `Requirements` (copied from the job family), `Responsibilities` (copied from the job family), `Skills`, `Traits`, and `Values` (standard across all roles, see additional info in the next step).
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

1.  To edit the attributes within a category, click `Edit` next to the category. You can then change the name of attributes, delete attributes, add brand new ones, or choose existing attributes from other vacancies. Keeping the attribute names the same and choosing existing attributes from other vacancies is recommended so that the attribute choices remain streamlined. However, if you have a particular attribute for this role that needs to be evaluated, don't hesitate to add it.

1. Click `Save` once you've configured your attributes and categories. If you don't want to save your changes after you've clicked `Edit` under a category, click `Cancel`.

1. Once the scorecard is finished, click `This looks good, NEXT` at the right of your screen.

1. The `Interview Plan`, is where you'll craft the hiring process and scorecards for each step in the process. The interview plan may not be known until after the Kick-off Session and may be skipped during the initial setup of the REQ.  The CES will update the interview plan after the Kick-off Session.

1. Every vacancy should have an `Application Review` stage. Typically no edits are needed on this stage.

1. There is an optional stage called `Qualified` for those recruiters who would like to use it as a holding place before `Screening`. Especially with high-volume roles, this step can be used to sort through all the applications, mark the ones who meet the qualifications and want to reevaluate before the qualified pool before screening.

1. Some vacancies have an `Assessment` as the second stage in the process.
   - If your vacancy requires an assessment but there is no assessment stage already added, scroll to the bottom of the page and click `Add a Stage`.
   - From there, you can either click `Copy from another job?` at the bottom of the pop-up and select a vacancy you know has an assessment. Click on `Assessment`, then `Add`.
   - If you're not sure of another vacancy that has an assessment, you can scroll to the bottom of the pre-populated list and select `Take Home Test`, then `Add`.
   - Once added, hover over the new stage and click the pencil next to the stage name and change the text from `Take Home Test` to `Assessment`. Then hover over the second `Take Home Test` on the right of the stage and change the text again.
   - The assessment stage **must** be added using one of the two methods above, or it will not work properly. If you have any questions about this, please reach out to the recruiting operations team.
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
   - Include the purpose of the call and questions the interviewer should ask. You can copy this over from another vacancy if applicable.
   - Under `Custom Questions`, be sure that there is a `Full Notes` custom question in addition to the interview specific questions.
   - To add additional questions, click `Add Custom Question`, title it `Full Notes`, choose `Text` as the answer type, and click `Add Custom Question`.
   - Choose default interviewers. If you have multiple team members that can interview, feel free to input all of their names, and the CES will choose one interviewer when scheduling the interview. This gives visibility to everyone who is trained and ready to perform interviews for this vacancy.
   - The two `Additional Settings` should both be checked.
   - Click `Save`.

1. Some teams prefer to have the hiring manager stage broken out separate from `Team Interview` stage and in that case, a stage labeled `Hiring Manager Interview` should be added.

1. To add a new interview in a stage, hover over the stage and click `Add Interview`, then you can copy over an interview from another job or create a new one. You can also move the interviews around within the stage and change the interview names.

1. The next stage (if applicable) is the `Executive Interview` stage. Depending on the level of the role the executive interviews may be conducted during the team interview stage. In this case, the executive interview section would be reserved for the CEO interview, if applicable. You can customize as needed following the guidelines for the team interview, including selecting attributes, adding custom questions, setting the interview length and selecting a default interviewer.

1. The next stage is `Reference Check`, with at least three sections; a former manager and two former peers. These can be customized as needed. For executive-level roles, it is suggested you include the following; two former managers, two former peers, two former direct reports, and back-channel. The [background check](/handbook/people-group/people-policy-directory/#background-checks) is performed during the Reference Check stage.

1. There is an optional `Justification` section. This section should include three questions:
   - In what specific way(s) does this candidate make the team better?
   - What flags were raised during the interview process?
   - How do we intend on setting this candidate for success?

1. The last stage is the `Offer` stage and cannot be edited or removed. Some important notes about the interview plan:
   - Every interview should be evaluating values add in the attributes section.
   - On occasion, there may be additional or fewer stages than represented here, but these stages should be consistent as much as possible in order to maintain data integrity for reporting. The interviews within the stages can be adjusted as needed.
   - If a candidate will have more interviews in a stage than predetermined, you can add additional interview events as long as the candidate is in the stage where you need to add the additional event.

1. Once your interview plan is complete, click `This looks good, NEXT` at the right.

1. The `Hiring Team` is where you select who will be working on this vacancy and what access they should have.
   - Scroll to the `Who's responsible for this job?` to assign the Hiring Managers, [Recruiter(s)](/handbook/hiring/recruiting-alignment/), Coordinator(s) and Sourcer(s). Everyone who will be involved in interviewing may not be known until after the Kick-off Session. The CES will update the Hiring Team after the Kick-off Session.
   - Scroll to the `Who can see this job?` section to set permissions to the team members who will need access. Search for someone's name click the pencil and select the correct access level from the drop-down.
   - Search for every person who will be in the hiring process, whether they will be grading assessment, reviewing new applications, or performing interviews.
   - You may need to go back to the interview plan to add the interviews if it did not let you add them before completing this step.

1. Click `This looks good, NEXT` at the right.

1. Approvals section is where you can add any notes here for the vacancy where it says `Leave a note`.
   - If you were unable to determine the compensation information tag the Compensation and Benefits team in the Approval Notes section with an @ mention.

1. Click `This looks good, NEXT` at the right. 

1. In the Notifications section update the "Approved to Start Recruiting" section. Ensure emails will be sent to the Hiring Manager, Recruiter, Sourcer, and CES so everyone knows when the job has been approved. 

1. Scroll to the bottom of the page and click `Request Approval`.

1. You'll be redirected to the vacancy in Greenhouse, where you can review the vacancy, make any changes, or make any updates.

#### Kick-off Session

Details about the Kick-off Session are found [here](/handbook/hiring/recruiting-framework/req-overview/#step-3-complete-kick-off-session-agree-on-priority-level--complete-a-sourcing-session).

#### Publishing the Job

The [Candidate Experience Specialist](/job-families/people-ops/candidate-experience/) who is the coordinator for that vacancy should follow the below steps once they receive notice from the recruiter to post the new vacancy.

1. Go to the vacancy and under `Job Setup`, review the configurations the Recruiting Manager has made and ensure everything is correct; reach out to them to ask clarifying questions if there is anything you don't understand or if there is anything missing.

1. The interview plan, scorecard(s), hiring team should be updated from the Intake Call notes. Each req is different on which stages are included and the order of those stages, however ensure each stage is labeled correctly for reporting purposes:
    - Application Review
    - Qualified
    - Screening
    - Assessment
    - Hiring Manager Interview
    - Team Interview
    - Technical Interview
    - Executive Interview
    - Justification
    - Reference Check
    - Background Check
    - Offer

1. Confirm each person in the hiring process has appropriate access and upgrade if necessary in [Greenhouse](/handbook/hiring/greenhouse/#access-levels-and-permissions).

1. Confirm each interviewer has a personal Zoom link.

1. Confirm each interviewer is listed on the [Zoom Cheat Sheet](https://docs.google.com/spreadsheets/d/1D8praKd3Vc1gMTTUzONAGkqNKxyYHd3_nzqsq2OYjeA/edit?usp=sharing).

1. Confirm each interviewer has completed an [Interview Training Issue](https://gitlab.com/gitlab-com/people-ops/Training/issues/new).

1. The CES may choose to send the following email to each member of the interview team:

   Subject: Interview Training Issue, Zoom Personal Room and Google Office Hours

   Body: xxx, in order to have you scheduled for interviews I needed to create a zoom personal "room" for you. Please note this link can be joined by anyone at any time if they already have the link so it's a good idea to turn on the [waiting room function](https://support.zoom.us/hc/en-us/articles/115000332726-Waiting-Room?mobile_site=true#PMI). You can even customize the waiting room message with a GitLab logo and custom text! These steps are done in a web browser, not the app.

   Your personal zoom link: https://gitlab.zoom.us/my/gitlab.

   Also can you please make sure you have your office hours set up in your calendar? This will help me schedule the interview right the first time and save you and the candidate time and frustration. You can learn how [here](https://support.google.com/calendar/answer/7638168?hl=en).

   And one final thing, if this is your first time conducting interviews on behalf of GitLab I will need to create an interview training issue for you. Please let me know if that is the case. 

   As always, If you have any questions let me know!
   Thanks, xxx

1. Confirm email notifications for the hiring team under `Job Setup`.
   - Weekly Recruiting Report:
      - Hiring Manager
   - New Internal Applicants:
      - Hiring Manager
      - Recruiter
   - New Referrals:
      - Hiring Manager
      - Recruiter
   - New Agency Submissions:
      - Hiring Manager
      - Recruiter
   - Approved to Start Recruiting:
      - Hiring Manager
      - Executive
      - Recruiter
      - Sourcer
      - Candidate Experience Specialist
   - Offer Fully Approved:
      - Hiring Manager,
      - Executive,
      - Recruiter,
      - Recruiting Managers,
      - People Business Partner according to [business alignment](/handbook/people-group/#people-business-partner-alignment-to-division)
   - Stage Transitions:
      - Recruiter (all stages)
      - Candidate Experience Specialist (all stages)
      - Hiring Manager:
        -  Reference and Background Check
        -  Justification
        -  Offer
   - New Scorecards:
      - Recruiter
      - Candidate Experience Specialist

1. Create or update the `Job Post` under `Job Setup`, which will hold the vacancy description and application questions. Next to the name of the vacancy, click the pencil icon to edit the job post.
   - `Job Name` - if only internal candidates will be considered for the role, job title should read "CURRENT TEAM MEMBERS ONLY - Job Name"
   - `Post To` should always be `Internal`.
   - `Location` always keep `Remote` listed in addition to any location requirement.
   - `Application Language` should always be `English`.
   - `Description` should be the copy/pasted from the job family on GitLab.com with the relevant information for the level/specialty/etc.
   - Be sure to add the Compensation section as a header and hyperlink the `view our handbook` to the correct job family link:
   Compensation

   To view the full job description and its compensation calculator, view our handbook (insert job family url). The compensation calculator can be found towards the bottom of the page.

   Additional details about our process can be found on our [hiring page](/handbook/hiring/interviewing/).

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

1. If there is an *External Job Post*, please **delete** it by clicking the ellipsis (`•••`), then `Delete`. 

1. Click the red button to publish the vacancy to our internal job board.

1. Next, create the [Global Self-Identification Survey](/handbook/hiring/greenhouse/#global-self-identification-survey) by creating a job post for the open requisition.
   - Job Name: Global Self-Identification Survey
   - Post To: GitLab
   - Location: Remote
   - Description: Enter `n/a`
   - Basic Application Information: (does not matter)
   - Custom Application Questions: (none)
   - Send Confirmation Email to Candidates: (unchecked)
   - Application Confirmation Page: Default
   - Include Custom Demographic Questions: Global Self-Identification Survey
   - Include EEOC Questions: (unchecked)
   - Include 'Apply with SEEK' button: (unchecked)
   - Publish to Free Job Boards: (unchecked)
   - Status: Off


1. After publishing, announce on Slack in `#new-vacancies` for team members to apply or send in referrals. Slack message template:
  
   New Job Alert: TITLE

   Apply internally: LINK
   
   Review how to make a referral: /handbook/hiring/referral-process/
