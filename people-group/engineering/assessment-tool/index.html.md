---
layout: handbook-page-toc
title: Assessment Tool
description: "Information on how GitLab's People Engineering team created and how we use our 9-box Assessment Tool."
---

## On this page

{:.no_toc}

- TOC
{:toc}

## Overview

To support managers at GitLab with the Talent Assessment of their team members, People Engineering has built a talent assessment tool. 

It's a basic tool that replaces the previous methods of using Google Slides that were prepared by the People Business Partners. The goal is to have different teams within GitLab use the tool and iterate with feedback provided by the users.

#### Current Sign Up Process
We use Okta as the authentication provider for the tool.

### Data Used From BambooHR

The tool uses BambooHR as the single source of truth for all the team members' data. It has `read-only` access to the following fields:

- Name
- Email
- Division
- Department
- Job Title
- Region (Americas, EMEA or JAPAC)
- Manager
- Employment Status
- Date of Birth
- Entity
- GitLab username
- Gender

It has `write` access to the following fields:
- Performance factor
- Growth factor

The access level for the API token is approved by the Total Rewards Team. If additional access is needed, an access request needs to be created.

The tool does not display gender or birth dates for individuals, but rather uses this information as aggregate data for reporting. 

We follow our [confidentiality rules](/handbook/people-group/engineering/#confidentiality) for this project and mirror it to a private project on ops.gitlab.net.

### How To Use The Tool

On 2020-11-05 we had a live training session on the use of the tool and Calibration sessions. You can review the video below and [slides](https://docs.google.com/presentation/d/1EqLUSBSLWbtSRCRqqeQkR-TRRsUdgWYKsD5jiN44vCY/edit?usp=sharing) for reference.  

<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/Ano9nn6f8Ek" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>

#### Individual Contributors

As an individual contributor, you are not required to sign up for or use the tool. Your manager will be asked to use the tool to make their recommendations, assess and calibrate with other managers in the department.  

#### People Managers

It is recommended that you before you log in, you read up on [what Performance/Growth Assessments at GitLab are](/handbook/people-group/performance-assessments-and-succession-planning/).

Once you're familiar with the process, you need to create an account (see "Creating an Account" section) to begin assessments.

**Please note that you will not be able to begin assessments until your aligned [People Business Partner](/handbook/people-group/#people-business-partner-alignment-to-division) initiates the assessment round for your department.**

##### Steps For Managers When Assessing Team Members 

1. Click "Assess your team members within [TEAM]"
1. Click `Open Box View`. This will take you to the Performance/Growth axis view for your team members. 
1. If you are managing other managers, you can check and uncheck the filter for `Direct Reports Only` to view your direct reports only. 
1. On the left side, you will see an overview of all the team members who directly or indirectly report to you. This view is in alphabetical order. 
1. The view is divided into `Eligible team members`, `New hires (started in the last 90 days)` and `Excluded from the Assessment Round`. Team members that are Excluded from the Assessment round have a start date before the threshold as set by the People Business Partner. For example of November 1st as stated [in the handbook](/handbook/people-group/performance-assessments-and-succession-planning/#eligibility). 
1. You can filter your view for `Division`, `Department`, `Roles`, and `Team`. By clicking the "x" next to the filter you reset to the full overview. 
1. The colors indicate the location of the team members. We use this to create awareness pertaining to potential [unconscious bias](/company/culture/inclusion/unconscious-bias/) with regards to locations and regions.
1. After familiarizing yourself with the tool, you're ready to assess your team members and place them in the appropriate box. (Example: Developing with Exceeding Growth would be aligned with the bottom right box, or box 6).  
1. When hovering over the box numbers you can view the definition, actions, and meaning for each box. This is aligned with [the Handbook page on Talent Assessment](/handbook/people-group/talent-assessment/#talent-assessment-program). 
1. If you prefer to review team members in a table view, you can click the button in the top left that reads `table view mode`.
1. By clicking `assess` behind the team members' names, you will be asked to `Assess Growth` from a drop-down menu and `Assess Performance` from a drop-down menu. 
1. If Succession planning is enabled for this round, you can click the `+` behind the team members' names and indicate if and when they would be a successor for the next level. Options are: `Within 6 months`, `Within 12 months` or `After 12-24 months`. Also if someone has been the `Emergency contact`  while the next level leader has been away you can indicate that by checking the box. Note that the Succession part if enabled doesn't have to be filled out for all team members - you could fill out Succession for a limited amount of team members/it's optional. 
1. If Promotion planning is enabled for this round, you can click the `+` behind the team members' names and indicate if and when they would be ready for a promotion. Options are: `Within 3 months`, `Within 6 months`, `Within 12 months` or `More than 12 months away`. The results of this assessment will help with promotion planning for the remainder of/the upcoming year. 
1. After completing the assessment of all team members in the box view mode or table view mode, click `Save`. Note: you can also click `Save` in between so that your work doesn't get lost. 
1. Finally, you can start preparing for the [callibration meeting](/handbook/people-group/performance-assessments-and-succession-planning/#calibration-session) to discuss the assessments of your team members and calibrate.  

Note: For Director level and up, there is an extra option to **confirm** the assessments. This is a way to communicate that the assessment
has been _approved_.

#### People Business Partners

If you have any direct reports, you will also be able to use the tool to assess your team members. However, you will also have access
to assess all the team members that are within your People Business Partner (PBP) client group. 

##### Steps For PBPs To Initiate Assessment Periods

1. Log in to the tool via [this link](https://assessment.gitlab.net/users/sign_in) 
1. Click `Start a new round` in the top right corner
1. Select the Department you want to start the Assessment round for from the dropdown menu
1. Enter the start and end date of the Assessment round. The handbook provides a period [ranging between 4-6 weeks](/handbook/people-group/performance-assessments-and-succession-planning/#matrix-assessment-timeline) for the full assessment process. 
1. Determine if you want to `Enable Succession planning` and/or `Enable Promotion planning`. This function will allow you and your managers to add `Emergency contact` status `Successor timeline` as well as `Promotion readiness`. The general recommendation is to enable [both](/handbook/people-group/performance-assessments-and-succession-planning/#succession-planning), as it is not possible to turn this feature on after the assessment period has started. 
1. Determine the `Cut off date`. _Note: This is only needed if you want to exclude team members with a hire date after the determined cut-off date. For example, to exclude team members hired after October 31st in the review cycle for Q4, October 31st would be the "cut off date".
1. Click `Create Assessment Round` when all details are filled in. 
1. The review round for the department has now been created and managers can sign in within the tool and perform their assessments. Their assessments would only be saved if they click the `Save` button. 

##### Steps For PBPs to move to review stage used for calibration sessions
1. Log in to the tool via [this link](https://assessment.gitlab.net/users/sign_in) 
1. Click `Dashboard` in the top right corner. 
1. Click `Overview` for any of the departments you would want to be reviewing. 
1. Click on the `Move to Review` button to move the department to review. 
1. Depending on the participants in the Live review session you can select team members who will not be shown in the review session. This can be helpful if someone is joining the review session (a manager for example) but has also been reviewed by the next level leader. 
1. When ticking the box - the team member wil not be shown in the box overview. 
1. If during the calibration session team members move box, it's important to `Save` any changes in placements by clicking the `Save` button. 
1. After the live calibration session, as a PBP, you can analyse results and click `Finalize` when all managers/leaders are on board with the placements. The `Finalize` button confirms the assessments.
1. As a final step, in the People Business Partner dashboard, after closing the round, click the `Sync To BambooHR` button to push assessments to BambooHR. Please note that *only* PBPs are able to complete this step.

##### Steps for PBPs to analyse results after the review session
1. Log in to the tool via [this link](https://assessment.gitlab.net/users/sign_in) 
1. Click `Dashboard` in the top right corner. 
1. Click `Overview` for any of the departments you would want to be reviewing. 
1. You will be taken to an overview for that department with bar charts - indicating how many team members are assessed at each level for Growth, Performance, and both. 
1. You can check the boxes behind `Aggregated Data:` to `Show male vs non-male` , `Use Percentages` and/or `Show Regions`. 
1. In the [Talent Assessment](/handbook/people-group/talent-assessment/#expected-distribution-company-wide) there are guidelines on distribution for team members overall. 
1. Note: Team members who are not places in a box would not count towards the total %. 
1. This functionality already works before assessments have been confirmed and before the calibration sessions. Therefore it can be helpful to review before going into the [live calibration sessions](/handbook/people-group/performance-assessments-and-succession-planning/#calibration-session). 

#### Workflow Process For The Tool

```mermaid
graph TD
    A[2021-10-01 - PBP signs up with the tool]:::PBP -->B[2020-11-01 - PBP kicks off the Assessment period for the department aligned with steps above]
    B:::PBP --> C[2021-11-01 - PBP determines start and end data of the assessment]
    C:::PBP --> D[2021-11-01 - Managers sign up with the tool]
    D:::CLIENT --> E[2021-11-01 - Managers would only be able to see their teams]
    E:::CLIENT --> F{2021-11-XX - Assessment period starts}
    F:::POPS -->|PBP| G[Sets up the calibration meetings]
    F:::CLIENT -->|Managers| H[Start the assessment for their team members]
    G:::PBP --> I[Calibration meeting takes place]
    H:::CLIENT --> I[Calibration meeting takes place]
    I:::TR --> J[2021-11-29 - Data is extracted into aggregated overview for analysis] 
    J:::PBP --> K[2021-11-30 - PBP discusses with managers/leadership]
    K:::CLIENT --> L[2021-11-30 - Performance/Growth reviews are finalised]
    L:::CLIENT --> M[2021-11-30 - E-Group member/Senior Leadership signs off on the assessments]
    M:::PBP --> N[2021-11-30 - Approval is obtained via tool or sheets]
    N:::PBP --> O[2021-12-01 - PBP clicks send to BambooHR]
    O:::PBP --> P[2021-12-01 - End of Tool cycle]


classDef PBP fill:#D8BFD8, stroke: #333
classDef CLIENT fill:#FFF8DC, stroke: #333
classDef TR fill:#B0E0E6, stroke: #333
classDef POPS fill:#90EE90, stroke: #333
classDef EGROUP fill:#FFE4E1, stroke: #333


    Q[BambooHR sync] --> R[Visibility in BHR is set to managers only]
    R --> S[Managers have time to discuss the final assessment with team members]
    S --> T[Due date for discussions pass]
    T --> U[Visibility is turned on, for example on January 2]
```

### Feedback and/or Bugs

You can provide feedback or report bugs by creating issues on the project for this tool: [https://gitlab.com/gitlab-com/people-group/peopleops-eng/assessment-tool/](https://gitlab.com/gitlab-com/people-group/peopleops-eng/assessment-tool/)
