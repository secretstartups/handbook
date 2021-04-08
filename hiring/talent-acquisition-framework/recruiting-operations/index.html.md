---
layout: handbook-page-toc
title: "Talent Acquisition Process Framework - Talent Acquisition Operations & Insights"
---

{::options parse_block_html="true" /}

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Talent Acquisition Process Framework - Talent Acquisition Operations & Insights

### System Access

To gain access to a system listed below, please follow the respective link to the appropriate page on how to go about submitting an `Access Request` Issue:

<details>
  <summary markdown='span'>
  ContactOut
  </summary>

Sourcing Team only - please contact the Sourcing Manager.

</details>

<details>
  <summary markdown='span'>
  DocuSign
  </summary>

C.E.S. and Sales Operations Team only - please [contact the Talent Acquisition Operations & Insights Team](https://gitlab.com/gl-talent-acquisition/operations/-/issues/new).

</details>

<details>
  <summary markdown='span'>
  Greenhouse
  </summary>

[See how to join Greenhouse in the handbook](/handbook/hiring/greenhouse/#how-to-join-greenhouse).

</details>

<details>
  <summary markdown='span'>
  HelloSign
  </summary>

[See how to request a HelloSign account in the handbook](/handbook/people-group/people-experience-team/#hellosign).

</details>

<details>
  <summary markdown='span'>
  LinkedIn
  </summary>

[See the LinkedIn Recruiter Seat Request process in the handbook](/handbook/hiring/sourcing/#upgrading-your-linkedin-account).

</details>

----

### System Processes


<details>
  <summary markdown='span'>
  DocuSign
  </summary>

TBA

</details>

<details>
  <summary markdown='span'>
  Greenhouse
  </summary>

* **Candidate Profile Merge Requests**
   * Consider the following when merging candidate/prospect profiles:
      * Ensure that the Source, Coordinator, and Recruiter listed in the Details tab remains the same.
      * If a candidate is marked as *Hired*, ensure the profile that they were *Hired* on is the *Primary Profile*.
* **Offer Approvals**
    * The Offer Approvals process can be accessed in the [Greenhouse Handbook page](/handbook/hiring/greenhouse/#updating-requisition-and-offer-approval-flows)
* **Requisition Approvals**
    * To re-open a closed requisition and increase the opening count:
       1. Navigate to the *Approvals* tab, select `Edit Job & Openings`
       1. Navigate down to the *Openings* section and select `Add New`.
       1. Once a new opening populates, manually add the Opening ID number. The `Hiring Manager` section should mirror the other openings.
       1. Verify with the recruiter if the opening is a Backfill or New Hire. Select `Reopen as Draft`.
       1. Restart the approval process by selecting `Request Approval`. Mark a Total Rewards approver as approved. Send a note to Finance to review the additional opening request. Be sure to cc the recruiter in that note.
* **Referral Submissions**
    * [See how to process Referral Submissions in the handbook.](/handbook/hiring/referral-operations/#transferring-referral-submissions-to-greenhouse)

</details>

----
### Reporting

#### Monthly Metrics Reports

The *Monthly Metrics* are comprised of reports from both BambooHR and Greenhouse. Some of the reports are automated and are available in Sisense dashboards. The following is a list of those reports and their respective links, where applicable.

<details>
  <summary markdown='span'>
  Diversity Data
  </summary>

* **System**: BambooHR
* **Instructions**: Pull and export the report into a *private* Google Sheet. **Add** a column for `Region` next to `Country` and assign the appropriate region (e.g. APAC, EMEA, LATAM, or NORAM) formulaically. **Create** a pivot table to record the following information: Age, Country, Ethnicity, Gender, and Region. This data is used to update the [Identity Data](https://about.gitlab.com/company/culture/inclusion/identity-data/) page.

</details>

<details>
  <summary markdown='span'>
  Hiring Speed Per Candidate
  </summary>

* **System**: Greenhouse
* **Filters**:
    * Job Status = All
    * Departments = All Departments
    * Check *"Include Migrated Candidates"*
* **Instructions**: Pull and export the report into the *Monthly Metrics* sheet. Filter the report to the desired month and **add** a column for `Time to Accept`. Using the `DATEDIF` function, calculate the *Applied On Date* to the *Accepted Date* measuring days.

</details>

<details>
  <summary markdown='span'>
  Offer Activity
  </summary>

* **System**: Greenhouse
* **Filters**:
    * Job Status = All
    * Departments = All Departments
    * Activity Date = Custom Range (Enter Desired Month)
    * Check *"Include Migrated Candidates"*
* **Instructions**: Pull and export the report into the *Monthly Metrics* sheet. Sort the report by `Offers Rejected`. For every recorded rejected offer, verify the reasoning by searching the `Requisition ID` in Greenhouse. Go to the `Candidates` tab, select all candidate statuses, then set Stage = Offer in the Jobs dropdown. Click into the profile to verify the reasoning for the rejected offer. If **no** reasoning is provided, or if clarification is needed, @-mention the responsible Recruiter.

</details>

<details>
  <summary markdown='span'>
  Pipeline History and Pass-Through Rates
  </summary>

* **System**: Greenhouse
* **Filters**:
    * Rows = Stage
    * Job Status = All
    * Departments = All Departments
    * Group of Candidates = Candidates Who Applied During a Specific Date Range
    * Application Date = Custom Range (Enter Desired Month)
    * Check *"Include Migrated Candidates"*
* **Instructions**: Pull and export the report into the *Monthly Metrics* sheet.

</details>

<details>
  <summary markdown='span'>
  Pipeline by Demographic (or EEOC)
  </summary>

* **System**: Greenhouse
* **Filters**:
    * Use Data From = Global Self-Identification Survey
    * Columns = Milestones
    * Job Status = All
    * Departments = All Departments
    * Group of Candidates = Candidates Who Applied During a Specific Date Range
    * Application Date = Custom Range (Enter Desired Month)
    * Check *"Include Migrated Candidates"*
* **Instructions**: Pull and export the report into the *Monthly Metrics* sheet.

</details>

<details>
  <summary markdown='span'>
  Referrals Over Time
  </summary>

* **System**: Greenhouse
* **Filters**:
    * Rows = Department
    * Columns = Month
    * Job Status = All
    * Departments = All Departments
    * Date Applied = Custom Range (Enter Desired Month)
* **Instructions**: Pull and export the report into the *Monthly Metrics* sheet.

</details>

<details>
  <summary markdown='span'>
  Discretionary Bonuses
  </summary>

* **System**: Sisense
* **Dashboard**: [Discretionary Bonuses Overview](https://app.periscopedata.com/app/gitlab/507956/Discretionary-Bonuses-Overview)

</details>

<details>
  <summary markdown='span'>
  GitLabbers by Org Structure
  </summary>

* **System**: Sisense
* **Dashboard**: [GitLabbers by Org Structure](https://app.periscopedata.com/app/gitlab/512946/GitLabbers-by-Org-Structure)

</details>

----

#### Weekly Reports

The weekly reports are comprised of reports from both Greenhouse and Sisense. Some of the reports are automated and are available in Sisense dashboards. The following is a list of those reports and their respective links, where applicable.

<details>
  <summary markdown='span'>
  Candidate Surveys
  </summary>

* **System**: Greenhouse
* **Filters**:
    * Submitted Between = Custom Range (Enter Desired Month)
* **Instructions**: Pull and export the report into the *Greenhouse ISAT* sheet.

</details>

<details>
  <summary markdown='span'>
  CRM Metrics
  </summary>

* **System**: Greenhouse
* **Instructions**: Refresh the [Base] sheets, which are linked to Greenhouse via their *Google Sheets Connector*. Copy the data from the `[BASE] Prospect Conversion` and paste it into the `prospect_conversion_data` sheet, matching the existing columns. Filter the sheet by the `Converted to Candidate` column - remove "0" - then sort the sheet alphabetically by the `Prospect Pool` column. Combine all duplicates so that only aggregated pool information remains. Calculate the *Conversion Rate* (Converted to Candidate/Prospects in Pool/Stages) and use that information to update the `Historical Metrics` and `Pool Metrics` tabs. Secondly, copy the data from the `[Base] Prospecting Activity` sheet and paste that into the `prospecting_activity_data` sheet, matching the existing columns. Next, assign a *Role* to Talent Acquisition Team Members **only** (e.g. *Talent Acquisition Manager*, *Recruiter*, or *Sourcer*). Remove all "Blanks" from the `Role` column and calculate the *Conversion Rate* (Converted to Candidate/Prospects Added). Reference that range when updating the chart on the `Historical Metrics` tab.

</details>

<details>
  <summary markdown='span'>
  Hiring Speed Per Candidate
  </summary>

* **System**: Greenhouse
* **Filters**:
    * Job Status = All
    * Departments = All Departments
    * Check *"Include Migrated Candidates"*
* **Instructions**: Pull and export the report into the *Applies to Offer Accepts* sheet. Filter the report to the desired month and **add** a column for `Time to Accept`. Using the `DATEDIF` function, calculate the *Applied On Date* to the *Accepted Date* measuring days.

</details>

<details>
  <summary markdown='span'>
  Last 15 in [Stage]
  </summary>

* **System**: Greenhouse
* **Filters**:
    * Job Status = Open
    * Status = Active
    * Departments = All Departments (or Select Desired Department(s))
    * Stage = (Select Desired Stage)
    * Last Activity = (Select Desired Date)
* **Instructions**: Pull and export the report into the **Last 15 in [Stage]** sheet. Include links to candidate Greenhouse profiles and a column for *Location Factor*.

</details>

<details>
  <summary markdown='span'>
  Global Self-Identification Survey Data
  </summary>

* **System**: Greenhouse
    * **Report**: Pipeline by Demographic
    * **Filter**:
        * Use Data From = Global Self-Identification Survey
        * Columns = Milestones
        * Job Status = All
        * Departments = All Departments
        * Group of Candidates = Candidates Who Applied During a Specific Date Range
        * Application Date = Custom Range
            * Enter > `2020-04-30`
        * Check *"Include Migrated Candidates"*
    * **Report**: All Candidates tab
    * **Filters**:
        * Candidates = All Jobs
        * Candidate Status = All
        * Reach Milestone = Assessment
        * Job Post = Pending Submission
        * Last Activity > `2020-04-30`
    * **Instructions**: Pull the report within Greenhouse, export- and upload it to the *Global Self-Identification Survey Data* sheet.
* **System**: Sisense
* **Dashboard**: [Talent Acquisition Metrics](https://app.periscopedata.com/app/gitlab/668158/WIP_Talent-Acquisition_Metrics_parul)
    * `Screen` values only.
* **Instructions**: Pull/refresh and import the aforementioned reports into the sheet. Update the charts to make sure they're tied to the correct ranges. The `Responses` field in the **Survey Responses** box will automatically refresh if the report is refreshed via the *Greenhouse Reports Connector* tool. The second report from Greenhouse will automatically update as well. Please make sure that the `=COUNTA()` formula is in cell `A7` so that the `Survey Sends` field to automatically updated in the **Survey Sends** box. Reference the `Screen` values in the Sisense dashboard of as May 2020 and sum all values to the current month. Enter that value in the `Hit Screening` field of each box; the corresponding percentage will automatically update. Lastly, update the appropriate cells in the `historical` tab and please be sure to refresh the range for the *Ethnicity Self-Identification Percentage* chart.

</details>

<details>
  <summary markdown='span'>
  Talent Acquisition Team Weekly Reports
  </summary>

* **System**: Greenhouse
* **Instructions**: This report is a compilation of several linked reports. To find the appropriate value for a given cell, please click the linked report as follows:
    * **Offer Accepts**
        * Total Month to Date Offer Accepts: Follow the link and enter the provided monthly value.
        * Sourcer Offer Accepts: Follow the link, click on the appropriate month tab, and total the sum of *Offer Accepts* with the source `LinkedIn(Prospecting)`.
        * Outbound Candidates Hired: Follow the link, click on the appropriate month tab, and total the sum of *Offer Accepts* with the sources `LinkedIn(Prospecting)`, `Referral`, `Talent Community`, and `Social Referral`.
        * Year to Date Offer Accepts: Follow the link and enter the provided yearly value.
    * **Current Pipeline**
        * Total Candidates as of Date Added: Follow the link and enter the provided monthly value.
        * Sourced Candidates as of Date Added: Follow the link and total the sum of *Candidates* with the source `LinkedIn(Prospecting)`.
        * Outbound (Sourced + Referrals + Talent Community + Social Referrals): Follow the link and total the sum of *Candidates* with the sources `LinkedIn(Prospecting)`, `Referral`, `Talent Community`, and `Social Referral`.
        * Month-to-Date Time-to-Offer Accept (Days): Follow the link and enter the provided time-to-offer accept value.
    * **Other Metrics**
        * URG Sourcing Methods: Follow the link and enter the percentage provided in the `% Using Diversity Strings` cell.
        * CRM Prospect to Candidate Conversion Rate: Follow the link and enter the percentage provided in the `Conversion Rate` cell for the current date in the **Monthly** section.
        * Global Self-Identification Survey Sends: Follow the link and enter the percentage provided in the `Completion %` cell of the **Survey Sends** box.
        * Average Offer Accept Location Factor: Follow the link, click on the appropriate month tab, and average the `Location Factor` for all **applicable** roles.

</details>

<details>
  <summary markdown='span'>
  Sourcing Metrics
  </summary>

* **System**: Greenhouse
* **Instructions**: This report is a complilation of multiple linked reports via the *Greenhouse Report Connector* tool. Refresh all reports via that connector and enter the current monthly data into the appropriate columns in the following tabs: `Source (Month/Month)`, `Sources & Percentages`, and `Quality (Month/Month)`. Please see the list below for additional action items, where applicable.
     * `Source (Month/Month)`: Simply update the appropriate values that correspond to each source.
         * If a new source needs to be added, insert a new row in the appropriate **Source Category** (e.g. *Prospecting*) and enter its values.
     * `Sources & Percentages`: Update the appropriate values that correspond to each source. Then, referencing the *Hiring Speed per Candidate* report, determine the total number of **Outbound Offer Accepts** and the **Total Offer Accepts**. The percentage will update automatically as well as the charts if the month remains the same.
         * When adding a new month, create two new columns, copying their formatting, and update the chart's range.
     * `Quality (Month/Month)`: Simply update the appropriate values that correspond to each source.

</details>

<details>
  <summary markdown='span'>
  Ad Hoc Report
  </summary>

For an Ad Hoc report, please [create an Issue](https://gitlab.com/gl-talent-acquisition/operations/-/issues/new?issuable=Report%20Request) using the `Report Request` template.

</details>

----

### Common Issues
The Talent Acquisition Operations & Insights team utilizes [Talent Acquisition Operations Issues](https://gitlab.com/gl-talent-acquisition/operations/-/issues) to provide support for a variety of requests regarding systems support and access requests across Talent Acquisition's systems.

<details>
  <summary markdown='span'>
  Greenhouse Offer and Requisition Approvals
  </summary>

* "Can we add/remove approver from this approval chain?"
    * The process to add/remove an existing approver from an approval chain can be accessed in the [Greenhouse Handbook page](/handbook/hiring/greenhouse/#updating-requisition-and-offer-approval-flows)
        * Please be sure to update the [Greenhouse Approvals Tracker](https://docs.google.com/spreadsheets/d/1az2hy_l15F6uPHda3W-R6aLHhplYaBxsNdjurmwB3Wc/edit?ts=5eb44f4c#gid=236189940) when updating the approvals flow for requisitions.

</details>

<details>
  <summary markdown='span'>
  LinkedIn
  </summary>

* **LinkedIn Recruiter**
    * "I'm not able to connect my LinkedIn to a *Recruiter* (or *Hiring Manager*) seat."
        * First and forement, please ensure that you've added your GitLab email address to your LinkedIn profile and verified it.
    * "I've been given a *Recruiter*, but can't send profiles to Greenhouse via their integration."
        * Information about setting-up the *Recruiter System Connect* integration can be found [here](/handbook/hiring/greenhouse/#enabling-linkedin-recruiter-system-connect).
    * "I have a *Recruiter* (or *Hiring Manager) seat, but can't access GitLab's account.
        * Please try signing-out of LinkedIn and when signing back in, please be sure to select GitLab's account. This error often appears if you had a seat with another organisation.

</details>

<details>
  <summary markdown='span'>
  Re-Opening Requisitions
  </summary>

* "I need to update the offer details/send a new contract to the new hire. Can you please reopen this requisition?"
    * The process to reopen a requisition for this scenario can be found in the [CES Contract Processes Handbook page](/handbook/hiring/talent-acquisition-framework/ces-contract-processes/#how-to-resend-a-contract-after-being-marked-as-hired).

</details>

<details>
  <summary markdown='span'>
  System Integrations
  </summary>

* LinkedIn Recruiter: Integration help can be found [here](/handbook/hiring/greenhouse/#enabling-linkedin-recruiter-system-connect).
* Other Systems: If you encounter issues with other systems, please try signing-out/in, and/or clearing your cache and cookies first. If the problem still persists, please submit an  [Issues](https://gitlab.com/gl-talent acquisition/operations/-/issues).

</details>
