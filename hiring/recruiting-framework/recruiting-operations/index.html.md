---
layout: handbook-page-toc
title: "Recruiting Process - Recruiting Operations & Insights Tasks"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Recruiting Process Framework - Recruiting Operations & Insights Tasks

### System Access

To gain access to a system listed below, please follow the respective link to the appropriate page on how to go about submitting an `Access Request` Issue:

#### ContactOut
Sourcing Team only - please contact the Sourcing Manager.
#### DocuSign
C.E.S. and Sales Operations Team only - please contact the Recruiting Operations & Insights Team.
#### Greenhouse
[See how to join Greenhouse in the handbook.](https://about.gitlab.com/handbook/hiring/greenhouse/#how-to-join-greenhouse)
#### HelloSign
[See how to request a HelloSign account in the handbook.](https://about.gitlab.com/handbook/people-group/people-experience-team/#hellosign)
#### LinkedIn Recruiter
[See the LinkedIn Recruiter Seat Request process in the handbook.](https://about.gitlab.com/handbook/hiring/sourcing/#upgrading-your-linkedin-account)

----
### System Processes

#### DocuSign
#### Greenhouse
* **Candidate Profile Merge Requests**
   * Consider the following when merging candidate/prospect profiles:
      * Ensure that the Source, Coordinator, and Recruiter listed in the Details tab remains the same.
      * If a candidate is marked as *Hired*, ensure the profile that they were *Hired* on is the *Primary Profile*.
* **Offer Approvals**
    * TBA
* **Requisition Approvals**
    * To re-open a closed requisition and increase the opening count:
       1. Navigate to the *Approvals* tab, select `Edit Job & Openings`
       1. Navigate down to the *Openings* section and select `Add New`. 
       1. Once a new opening populates, manually add the Opening ID number. The `Hiring Manager` section should mirror the other openings.
       1. Verify with the recruiter if the opening is a Backfill or New Hire. Select `Reopen as Draft`.
       1. Restart the approval process by selecting `Request Approval`. Mark a Total Rewards approver as approved. Send a note to Finance to review the additional opening request. Be sure to cc the recruiter in that note.
* **Referral Submissions**
    * [See how to process Referral Submissions in the handbook.](https://about.gitlab.com/handbook/hiring/referral-operations/#transferring-referral-submissions-to-greenhouse)

----
### Reporting

#### Monthly Metrics Reports

The *Monthly Metrics* are comprised of reports from both BambooHR and Greenhouse. Some of the reports are automated and are available in Sisense dashboards. The following is a list of those reports and their respective links, where applicable.

* **Diversity Data**
    * System: BambooHR
    * Instructions: Pull and export the report into a *private* Google Sheet. **Add** a column for `Region` next to `Country` and assign the appropriate region (e.g. APAC, EMEA, LATAM, or NORAM) formulaically. **Create** a pivot table to record the following information: Age, Country, Ethnicity, Gender, and Region. This data is used to update the [Identity Data](https://about.gitlab.com/company/culture/inclusion/identity-data/) page.
* **Hiring Speed Per Candidate**
    * System: Greenhouse
    * Filters: Job Status = All; Departments = All Departments; Check "Include Migrated Candidates"
    * Instructions: Pull and export the report into the *Monthly Metrics* sheet. Filter the report to the desired month and **add** a column for `Time to Accept`. Using the `DATEDIF` function, calculate the *Applied On Date* to the *Accepted Date* measuring days.
* **Offer Activity**
    * System: Greenhouse
    * Filters: Job Status = All; Departments = All Departments; Activity Date = Custom Range (enter the desired month); Check "Include Migrated Candidates"
    * Instructions: Pull and export the report into the *Monthly Metrics* sheet. Sort the report by `Offers Rejected`. For every recorded rejected offer, verify the reasoning by searching the `Requisition ID` in Greenhouse. Go to the `Candidates` tab, select all candidate statuses, then set Stage = Offer in the Jobs dropdown. Click into the profile to verify the reasoning for the rejected offer. If **no** reasoning is provided, or if clarification is needed, @-mention the responsible Recruiter.
* **Pipeline History and Pass-Through Rates**
    * System: Greenhouse
    * Filters: Rows = Stage; Job Status = All; Departments = All Departments; Group of Candidates = Candidates who applied during a specific date range; Application Date = Custom Range (enter the desired month); Check "Include Migrated Candidates"
    * Instructions: Pull and export the report into the *Monthly Metrics* sheet.
* **Pipeline by Demographic (or EEOC)**
    * System: Greenhouse
    * Filters: Use Data From = Global Self-Identification Survey; Columns = Milestones; Job Status = All; Departments = All Departments; Group of Candidates = Candidates who applied during a specific date range; Application Date = Custom Range (enter the desired month); Check "Include Migrated Candidates"
    * Instructions: Pull and export the report into the *Monthly Metrics* sheet.        
* **Referrals Over Time**
    * System: Greenhouse
    * Filters: Rows = Department; Columns = Month; Job Status = All; Departments = All Departments; Date Applied  = Custom Range (enter the desired month)
    * Instructions: Pull and export the report into the *Monthly Metrics* sheet.
* **[Discretionary Bonuses Overview](https://app.periscopedata.com/app/gitlab/507956/Discretionary-Bonuses-Overview)**
    * System: Sisense
* **[GitLabbers by Org Structure](https://app.periscopedata.com/app/gitlab/512946/GitLabbers-by-Org-Structure)**
    * System: Sisense
----
#### Weekly Reports

The weekly reports are comprised of reports from both Greenhouse and Sisense. Some of the reports are automated and are available in Sisense dashboards. The following is a list of those reports and their respective links, where applicable.

* **Candidate Surveys**
    * System: Greenhouse
    * Filters: Submitted Between = Custom Range (enter the desired month);
    * Instructions: Pull and export the report into the *Greenhouse ISAT* sheet.
* **CRM Metrics**
    * System: Greenhouse
     * Instructions: Refresh the [Base] sheets, which are linked to Greenhouse via their *Google Sheets Connector*. Copy the data from the `[BASE] Prospect Conversion` and paste it into the `prospect_conversion_data` sheet, matching the existing columns. Filter the sheet by the `Converted to Candidate` column - remove "0" - then sort the sheet alphabetically by the `Prospect Pool` column. Combine all duplicates so that only aggregated pool information remains. Calculate the *Conversion Rate* (Converted to Candidate/Prospects in Pool/Stages) and use that information to update the `Historical Metrics` and `Pool Metrics` tabs. Secondly, copy the data from the `[Base] Prospecting Activity` sheet and paste that into the `prospecting_activity_data` sheet, matching the existing columns. Next, assign a *Role* to Recruiting Team Members **only** (e.g. *Recruiting Manager*, *Recruiter*, or *Sourcer*). Remove all "Blanks" from the `Role` column and calculate the *Conversion Rate (Converted to Candidate/Prospects Added). Reference that range when updating the chart on the `Historical Metrics` tab.
* **Hiring Speed Per Candidate**
    * System: Greenhouse
     * Filters: Job Status = All; Departments = All Departments; Check "Include Migrated Candidates"
     * Instructions: Pull and export the report into the *Applies to Offer Accepts* sheet. Filter the report to the desired month and **add** a column for `Time to Accept`. Using the `DATEDIF` function, calculate the *Applied On Date* to the *Accepted Date* measuring days.
* **Last 15 in [Stage]**
    * System: Greenhouse
    * Filters: Job Status = Open; Status = Active; Departments = All Departments (select desired department if applicable); Stage = (select desired stage); Last Activity = (select desired date)
    * Instructions: Pull and export the report into the **Last 15 in [Stage]** sheet. Include links to candidate Greenhouse profiles and a column for *Location Factor*.
* **Global Self-Identification Survey Data**
    * System: Greenhouse
    * Instructions:
* **Recruiting Team Weekly Reports**
    * System: Greenhouse
    * Instructions:
* **Sourcing Metrics**
    * System: Greenhouse
    * Instructions:
* **Ad Hoc Reports**
    * [Report Request](https://gitlab.com/gl-recruiting/operations/-/issues/new?issuable=Report%20Request)
----
### Common Issues
The Recruiting Operations & Insights team utilizes [Recruiting Operations Issues](https://gitlab.com/gl-recruiting/operations/-/issues) to provide support for a variety of requests regarding systems support and access requests across Recruiting's systems.

* **LinkedIn Recruiter**
* **Greenhouse Offer and Requisition Approvals**
* **System Integrations**
* **Re-Opening Requisitions**
