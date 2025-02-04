---
title: "Professional Services EM Opportunity Tracking"
description: "Describes processes for tracking open PS opportunities."
---

## Tracking Opportunities

### Salesforce.com Tracking

Tracking the overall pipeline for Professional Services and individual opportunities is important to the Professional Services team to retain visibility and ensure capacity for future projects.
This importance increases as we approach the end of the financial quarter (FQ), as we typically see a spike in **Closed Won** deals at this time.

To help this visibilty, the Engagement Managers maintain a subset of fields against an opportunity under the `Professional Services` section. These fields are reviewed and updated on a regular basis to support reporting to Professional Services leadership on the current forecast:

- `Engagement Manager` - Denotes the Lead Engagement Manager supporting the opportunity
- `EM Confidence Rationale` - Context and rationale to support whether the EM feels the opportunity will close within the quarter that it is currently forecasted.
- `Scoping Issue Link` - A direct link to the supporting scoping issue.
- `Professional Services Value` - EMs should update this field to represent the current expected value of the engagement. This is primarily for forecasting purposes. It is expected that this field is overwritten with the quoted value at the point of quoting. This value is inclusive of all education and consulting   services that are paid for by the customer. If you are planning to request investment services, include that value in here until the point of approval on SFDC Chatter. At that point, remove the investment services from `Professional services Value` and add it to `Investment Services Value`.
- `Proserve Amount` - This field is automatically updated with the value of PS after the Account Executive (AE) creates the quote.
- `Edu Services Value` - This field cannot be edited directly. It will automatically be populated with the value of the Education services quoted once the quote is created. If multiple quotes are made, the value will overwrite previous values added (including ones that were added by using the below `Edu Value Override` workflow).
- `Edu Value Override` - This is an editable field that should be filled in by the EM to accurately forecast early in the opportunity cycle. This will overwrite the value in the `Edu Services Value` field.
- `Investment Services Value` - This should be filled in by the EM once Investment services are approved by Sales VP and VP of global services. This will be used for both forecasting and accounting of closed/won investment services.

### Scoping Issue Tracking

#### Scoping Issue EM Boards

Scoping issues are auto-generated by the [services calculator](https://services-calculator.gitlab.io/) in the [ps-plan](https://gitlab.com/gitlab-com/customer-success/professional-services-group/ww-consulting/ps-plan) project with the label `Services Calculator` added to them.   Each EM has a board to track scoping issues assigned to them.

#### Triage of new scoping issues

New scoping issues can be accessed from the ["Issues by EM" board](https://gitlab.com/gitlab-com/customer-success/professional-services-group/ww-consulting/ps-plan/-/boards/2712579?label_name[]=Services%20Calculator) and will be tagged with the `Open` label. Any Engagement Manager can triage new issues, label them appropriately, and assign them to the correct EM.  The EM assigned to the scoping issue should be the person who works the region specified in the account record, under the `Account Demographics` section, `Sales Territory` field, unless otherwise determined by the team in order to balance scoping issue load across team members.

- Add the appropriate `Segment::` label based on which region owns the opportunity (see "Other labels" section below).
- Assign the new scoping issue to the relevant EM who owns this region

The board uses scoped labels with the `proposal` key to track the standard scoping issue workflow:

| Column | Definition |
| --- | --- |
| Open | Starting state for each scoping issue - EM has not reviewed the scoping issue yet |
| proposal::Awaiting_Discovery |  EM is waiting or additional information, either from account team, or via a scoping call, in order to be able to create an estimate |
| proposal::Strawman_WIP | EM has a strawman estimate in process |
| proposal::Estimate_Feedback | EM has completed the strawman estimate and is awaiting feedback from the account team and/or the customer |
| proposal::On_hold | PS engagement might proceed but there has been a delay in the timing |
| proposal::SOW_WIP | EM is in the process of creating the SOW, or SOW draft is being reviewed by the customer and we are awaiting feedback |
| proposal::Ready For Approval | SOW has been drafted and reviewed by account team and customer and we have been given the greenlight to proceed for signatures; GitLab revenue has approved |
| proposal::Approved | SOW has been approved by Dir. of PS and can be submitted for legal stamp and then signatures |
| Closed | opportunity has closed or we have received word from customer that they will not pursue PS |

#### Delivery Team Review and Approval

During `proposal::Strawman_WIP` stage, its good practice (for anything that is not-straighforward) to bring in a Technical Architect to review the initial estimate. You can do this by adding a label and signaling in slack. Specific process is defined on the [TA Handbook page here](/handbook/customer-success/professional-services-engineering/technical-architect/#engage-with-an-architect).

During the `proposal::SOW_WIP` stage, it is required to gain Regional Delivery Manager (RDM) approval as the RDM is responsible for succesful delivery of the proejct being scoped. You can do this by adding the `RDM::needs-review` label on the issue and signaling in the [#ps-engagement-mgrs](https://gitlab.slack.com/archives/C021J8Z88AJ) channel to `@ps-deliverymanagers`.

### Win Rate

Win rate is calculated by:
> Win Rate =  ClosedWon / (ClosedWon + ClosedLost)

Where:

- **ClosedWon** is determined by the associated SFDC opportunity going into closed/won status. This is done with the `proposal:Closed_Won` label
- **ClosedLost** is determined by the associated SFDC opportunity going into closed/lost status OR the scoping issue not having any activity for a period of 2 months. This is done with the `proposal:Closed_Lost` label. This helps us be objective with what should be considered Closed/Lost. This is a general principle and can be overridden by an EM if the opportunity is still active, but has not had contribution within the last two months.

As we have a quarterly reporting cycle, we need to know the quarter in which these opportunity scoping issues closed. We accomplish that by adding the close_qtr::QXYY ( example:`close_qtr::Q322` ) label to any issue that goes to closed won or lost.

### Other Labels Used for Tracking Scoping Issues

- `EM_Status` - manually added to scoping issues as a visual to see what the EM needs to follow up on
  - `Waiting`: EM is waiting for information from the account team or customer before we can take action to move the issue to the next stage
  - `ToDo`: EM has the next action for the current scoping issue
- `Segment` - manually added to scoping issues to track what sales region the issue is for
  - Ent_APAC
  - Ent_EAST
  - Ent_WEST
  - Ent_EMEA
  - MM_APAC
  - MM_East
  - MM_EMEA
  - MM_West
  - SMB

  Note `Public Sector US` is a label automatically added to scoping issues that are created via the Services Calculator when the PubSec US checkbox is checked.
