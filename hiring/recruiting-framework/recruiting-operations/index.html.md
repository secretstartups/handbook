---
layout: handbook-page-toc
title: "Recruiting Process - Recruiting Operations Tasks"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Recruiting Process Framework - Recruiting Operations Tasks

### System Access

To gain access to a system listed below, please follow the respective link to the appropriate page on how to go about submitting an `Access Request` Issue:

#### ContactOut
* Sourcing Team only - please contact the Sourcing Manager
#### DocuSign
* C.E.S. and Sales Operations Team only - please contact the Recruiting Operations & Insights Team
#### Greenhouse
* [See how to join Greenhouse in the handbook.](https://about.gitlab.com/handbook/hiring/greenhouse/#how-to-join-greenhouse)
#### HelloSign
* [See how to request a HelloSign account in the handbook.](https://about.gitlab.com/handbook/people-group/people-experience-team/#hellosign)
#### LinkedIn Recruiter
* [See the LinkedIn Recruiter Seat Request process in the handbook.](https://about.gitlab.com/handbook/hiring/sourcing/#upgrading-your-linkedin-account)
----
### System Processes

#### DocuSign
* TBA
#### Greenhouse
* **Candidate Profile Merge Requests**
   * Consider the following when merging candidate/prospect profiles:
      * Ensure that the Source, Coordinator, and Recruiter listed in the Details tab remains the same.
      * If a candidate is marked as *Hired*, ensure the profile that they were *Hired* on is the **Primary Profile**.
* **Offer and Requisition Approvals**
* **Referral Submissions**
   * [See how to process Referral Submissions in the handbook.](https://about.gitlab.com/handbook/hiring/referral-operations/#transferring-referral-submissions-to-greenhouse)
----
### Reporting

* **Monthly Metrics Reports**
    * The *Monthly Metrics* are comprised of reports from both BambooHR and Greenhouse. Some of the reports are automated and are available in Sisense dashboards. The following is a list of those reports and their respective links, where applicable.
        * **[BambooHR] Diversity Data**
            * Instrutions: Pull and export the report into a *private* Google Sheet. **Add** a column for `Region` next to `Country` and assign the appropriate region (e.g. APAC, EMEA, LATAM, or NORAM) formulaically. **Create** a pivot table to record the following information: Age, Country, Ethnicity, Gender, and Region. This data is used to update the [Identity Data](https://about.gitlab.com/company/culture/inclusion/identity-data/) page.
        * **[Greenhouse] Hiring Speed Per Candidate**
            * Filters: Job Status = All; Departments = All Departments; Check "Include Migrated Candidates"
            * Instructions: Pull and export the report into the *Monthly Metrics* sheet. Filter the report to the desired month and **add** a column for `Time to Accept`. Using the `DATEDIF` function, calculate the *Applied On Date* to the *Accepted Date* measuring days.
        * **[Greenhouse] Offer Activity**
            * Filters: Job Status = All; Departments = All Departments; Activity Date = Custom Range (enter the desired month); Check "Include Migrated Candidates"
            * Instructions: Pull and export the report into the *Monthly Metrics* sheet. Sort the report by `Offers Rejected`. For every recorded rejected offer, verify the reasoning by searching the `Requisition ID` in Greenhouse. Go to the `Candidates` tab, select all candidate statuses, then set Stage = Offer in the Jobs dropdown. Click into the profile to verify the reasoning for the rejected offer. If **no** reasoning is provided, or if clarification is needed, @-mention the responsible Recruiter.
        * **[Greenhouse] Pipeline History and Pass-Through Rates**
            * Filters: Rows = Stage; Job Status = All; Departments = All Departments; Group of Candidates = Candidates who applied during a specific date range; Application Date = Custom Range (enter the desired month); Check "Include Migrated Candidates"
            * Instructions: Pull and export the report into the *Monthly Metrics* sheet.
        * **[Greenhouse] Pipeline by Demographic (or EEOC)**
            * Filters: Use Data From = Global Self-Identification Survey; Columns = Milestones; Job Status = All; Departments = All Departments; Group of Candidates = Candidates who applied during a specific date range; Application Date = Custom Range (enter the desired month); Check "Include Migrated Candidates"
            * Instructions: Pull and export the report into the *Monthly Metrics* sheet.
        * **[Greenhouse] Referrals Over Time**
            *Filters: Rows = Department; Columns = Month; Job Status = All; Departments = All Departments; Date Applied  = Custom Range (enter the desired month)
            * Instructions: Pull and export the report into the *Monthly Metrics* sheet.
        * **[Sisense] [Discretionary Bonuses Overview](https://app.periscopedata.com/app/gitlab/507956/Discretionary-Bonuses-Overview)**
        * **[Sisense] [GitLabbers by Org Structure](https://app.periscopedata.com/app/gitlab/512946/GitLabbers-by-Org-Structure)**
* **Weekly, Monthly, and Quarterly Reports**
* **Ad Hoc Reports**
    * [Report Request](https://gitlab.com/gl-recruiting/operations/-/issues/new?issuable=Report%20Request)

### Common Issues
The Recruiting Operations & Insights team utilizes [Recruiting Operations Issues](https://gitlab.com/gl-recruiting/operations/-/issues) to provide support for a variety of requests regarding systems support and access requests across Recruiting's systems.

* **LinkedIn Recruiter**
* **Greenhouse Offer and Requisition Approvals**
* **System Integrations**
* **Re-Opening Requisitions**
